<?php
// Database Connection
$host = "localhost";
$username = "root";
$password = "";
$database = "url_shortener";

$conn = new mysqli($host, $username, $password, $database, 3307);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the short code from URL
$code = $_GET['code'];

// Fetch the long URL
$stmt = $conn->prepare("SELECT long_url FROM urls WHERE short_code = ?");
$stmt->bind_param("s", $code);
$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    header("Location: " . $row['long_url']);
    exit();
} else {
    echo "URL not found!";
}

$stmt->close();
$conn->close();
?>
