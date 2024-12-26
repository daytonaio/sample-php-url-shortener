
# URL SHORTENER (PHP)

 ## 1. Project Overview

A simple PHP-based application to create short URLs from long URLs. I used XAMPP for initial setup.
This project includes Docker support for easy development and deployment, with an optional Visual Studio Code devcontainer setup.

## 2. Technical Stack

- PHP
- MySQL/ PostgreSQL
- Docker

## Prerequisite

1. Docker and Docker Compose:

- Install Docker Desktop from Docker [official website](https://app.docker.com/).
- Ensure WSL 2 is installed and Docker integration is enabled for your distribution.

2. Visual Studio Code (Optional):

- Install [Visual Studio Code](https://code.visualstudio.com/).
- Install the **Dev Containers** extension for VS Code.

3. XAMPP (Optional):

If running locally (not using Docker), install [XAMPP](https://www.apachefriends.org/).

## Project Setup

1. Clone The Repository

```
git clone https://github.com/your-username/url-shortener.git
cd url-shortener
```
2.  Run Locally with Docker

This project includes a `docker-compose.yml` file to set up the application.

- Start the Docker containers

`docker-compose up --build`

- Access the app

Visit: `http://localhost:8080` in your browser.

- Stop the Docker containers

`docker-compose down`

3. Run Locally with XAMPP

If you prefer using XAMPP:

- Copy the project folder into the htdocs directory (e.g., `C:\xampp\htdocs\url-shortener`).
- Import the `url_shortener.sql` file in the `database` folder into your MySQL database.
- Configure the `shorten.php` file with your database credentials:
```
$host = "localhost";
$username = "root";
$password = "";
$database = "url_shortener";
```
- Start Apache and MySQL services in XAMPP.
- Access the app at `http://localhost/url-shortener`.

## Using the App

1. Enter a long URL in the input field and submit the form.
2. The app will generate a short URL.
3. Use the short URL to redirect to the original URL.

## Dev Container Setup

This project includes a `.devcontainer/devcontainer.json` file for developing in a consistent, containerized environment in Visual Studio Code.

1. Setup the Devcontainer

- Install the **Dev Containers extension** in Visual Studio Code.
- Open the project folder in VS Code
- When prompted, reopen the projet in the container:
  - If not prompted, press **Ctrl+Shift+P**, type Dev Containers: Reopen in Container, and select it.

  ## Devcontainer Features

  - Runs the application in a Dockerized environment.
  - Pre-configures MySQL, PHP, and Apache.
  - Provides a consistent development environment across all systems.

  ## Devcontainer Configguration

  The `devcontainer.json` file contains the following setup:
```
  {
  "name": "URL Shortener Dev Environment",
  "dockerComposeFile": ["../docker-compose.yml"],
  "service": "php",
  "workspaceFolder": "/workspace",
  "settings": {
    "terminal.integrated.defaultProfile.linux": "bash"
  },
  "extensions": [
    "ms-azuretools.vscode-docker",
    "esbenp.prettier-vscode",
    "bmewburn.vscode-intelephense-client"
  ]
}
```

## Install Additional Dependncies

Inside the devcontainer folder terminal:

```
composer install
npm install
```
## Database Setup

1. Using Docker

The docker-compose.yml file sets up a MySQL container with the following details:
Host: `mysql`
Port: `3306`
Database: `url_shortener`
Username: `root`
Password: `password`

2. Manually Import Database

- Import the `url_shortener.sql` file into MySQL.
- Ensure the urls table exists with the following schema:

```
CREATE TABLE urls (
  id INT AUTO_INCREMENT PRIMARY KEY,
  long_url TEXT NOT NULL,
  short_code VARCHAR(6) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 3. Application Features

- Shortens long URLs into short, shareable URLs.
- Stores URLs in a MySQL database with timestamps.
- Built-in URL validation.
- Simple, clean PHP and MySQL implementation.
- Dockerized environment for consistent development.

## 4. 🚀Getting Started

### Using Daytona

- Install Daytona: Follow the  [Daytona Installation Guide](https://www.daytona.io/docs/installation/installation/).
- Create the Workspace:
  `daytona create https://github.com/daytonaio/sample-php-url-shortener`

## 5. Deployment

The easiest way to deploy your PHP app is via [Heroku](https://www.heroku.com/) with an inbuilt database tool. [Learn more in the deployment documentation.](https://devcenter.heroku.com/)


### Additional Resources

- [MySQL ](https://www.mysql.com/)
- [PHP](https://www.php.net/)
- [XAMPP](https://www.apachefriends.org/)
- [Docker](https://www.docker.com/)
- [Daytona Integration Guide](https://dev.to/mayank_mohapatra/integrate-daytona-and-let-the-magic-begin-38hg)
- [PstgreSQL](https://www.postgresql.org/)

