<?php
// Database Connection
$host = "localhost";
$username = "root";
$password = ""; // Default for XAMPP
$database = "url_shortener";

$conn = new mysqli($host, $username, $password, $database, 3307);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the long URL from the form
$long_url = trim($_POST['long_url']);

// Validate URL
if (!filter_var($long_url, FILTER_VALIDATE_URL)) {
    die("Error: Invalid URL format");
}

// Generate a random shortcode
$short_code = substr(md5(uniqid(rand(), true)), 0, 6);

// Prepare the SQL query
$stmt = $conn->prepare("INSERT INTO urls (long_url, short_code, created_at) VALUES (?, ?, NOW())");
if (!$stmt) {
    die("Error preparing statement: " . $conn->error);
}

$stmt->bind_param("ss", $long_url, $short_code);

// Execute the query and check for errors
if ($stmt->execute()) {
  $shortened_url = "http://localhost/url-shortener/redirect.php?code=" . $short_code;
  echo '<div class="alert alert-success">
          Shortened URL: <a href="' . htmlspecialchars($shortened_url) . '" target="_blank" class="alert-link">' .
          htmlspecialchars($shortened_url) . '</a>
        </div>';
  echo '<button onclick="copyToClipboard()" class="btn btn-secondary w-100" id="copyButton">
          Copy Shortened URL
        </button>';
  echo '<script>
          function copyToClipboard() {
              const shortUrl = document.querySelector(".alert-link");
              navigator.clipboard.writeText(shortUrl.href);
              alert("URL copied to clipboard!");
          }
        </script>';
} else {
  echo '<div class="alert alert-danger">Error: ' . htmlspecialchars($stmt->error) . '</div>';
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
