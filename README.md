# JavaLoginSystem
# Authentication System README

## Table of Contents
- [Project Overview](#project-overview)
- [Features](#features)
- [Database Schema](#database-schema)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Overview
This project is an authentication system that allows users to register, log in, and access a user dashboard. The system is built using Java servlets, JSP, MySQL, and the Bootstrap framework.

## Features
- User registration with unique username and email
- Secure password storage
- User login with session management
- User dashboard displaying basic information
- Logout functionality
- Alert messages for successful login and unauthorized access

## Database Schema
The MySQL database has a schema with a `users` table containing the following columns:
- id (Primary Key, Auto Increment)
- username
- password
- email

## Setup Instructions
1. Clone the repository to your local machine.
2. Set up your MySQL database and import the provided SQL script.
3. Configure the database connection settings in `DBUtil.java`.
4. Make sure you have Apache Tomcat and Eclipse set up for Java web applications.
5. Import the project in Eclipse and deploy it on your Tomcat server.

## Usage
1. Access the application by opening a web browser and navigating to `http://localhost:8080/loginsystem/`.
2. Register a new user with a unique username and email.
3. Log in using your registered credentials.
4. Access your user dashboard.
5. Log out from the dashboard.

## Contributing
Contributions are welcome! If you find any issues or have ideas for improvements, feel free to submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
