<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>URL Shortener</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .url-form {
            background: #f8f9fa;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .result {
            margin-top: 20px;
            padding: 15px;
            border-radius: 5px;
        }
        .copy-button {
            margin-top: 10px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">URL Shortener</h1>
        <div class="url-form">
            <form action="shorten.php" method="POST">
                <div class="mb-3">
                    <label for="long_url" class="form-label">Enter your URL:</label>
                    <input type="url" class="form-control" id="long_url" name="long_url" required
                           placeholder="https://example.com">
                </div>
                <button type="submit" class="btn btn-primary w-100">Shorten URL</button>
            </form>
        </div>
        <div id="result" class="result"></div>
        <button onclick="copyToClipboard()" class="btn btn-secondary w-100 copy-button" id="copyButton">
            Copy Shortened URL
        </button>
    </div>

    <script>
    function copyToClipboard() {
        const shortUrl = document.querySelector('.alert-link');
        navigator.clipboard.writeText(shortUrl.href);
        alert('URL copied to clipboard!');
    }
    </script>
</body>
</html>
