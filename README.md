# To-Do List Application

## Description

A comprehensive task management application built with JavaFX that allows users to create, manage, and track their tasks with features like categorization, prioritization, notifications, and collaborative sharing.

> This was originally a group project. This repository is my personal fork, with corrections and setup fixes applied (database schema, credentials handling, build configuration).

## Features

### Core Functionality
- **User Authentication**: Registration and login system
- **Task Management**: Complete CRUD operations for tasks
- **Advanced Filtering**: Filter tasks by priority, category, date, and status
- **Notes System**: Create and manage personal notes
- **Notification System**: Automatic reminders and task-related notifications
- **Task Sharing**: Invite other users to view your tasks
- **Reward System**: Earn coins for completing tasks
- **Dashboard**: Visual statistics and charts for task overview

### Task Features
- Priority levels: Low, Medium, High
- Categories: Routine, Work, Study, Sport, Other
- Status tracking: To Do, In Progress, Completed
- Due date management

## Technologies Used

- **Java** — core language
- **JavaFX** — GUI framework
- **MySQL** — relational database
- **JDBC** — database connectivity

## Prerequisites

- Java JDK 17 or higher
- MySQL Server 8.0 or higher
- JavaFX SDK 21 (download from [openjfx.io](https://openjfx.io/))
- MySQL Connector/J (download from [dev.mysql.com](https://dev.mysql.com/downloads/connector/j/))

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/yasminekhaznadji/to-do-list.git
cd to-do-list
```

### 2. Database setup
Run the schema included in `bdd.txt` — it creates the database and all required tables:
```bash
mysql -u root -p < bdd.txt
```

### 3. Configure database credentials
Edit `src/Model/DatabaseManager.java` with your own MySQL credentials:
```java
private static final String USER = "root";
private static final String PASSWORD = "your_password";
```

### 4. JavaFX setup
1. Extract the JavaFX SDK (e.g. to `C:\javafx\javafx-sdk-21.0.12\`)
2. Update the path in `compile.bat` to match your own JavaFX SDK location

## Build and run

### Compile
```bash
compile.bat
```

### Copy resources (FXML, CSS, images) into the compiled output
```bash
robocopy src bin /E /XF *.java
```

### Run
```bash
java --module-path "C:\javafx\javafx-sdk-21.0.12\lib" --add-modules javafx.controls,javafx.fxml -cp "bin;C:\mysql-connector\mysql-connector-j-26.7.0\mysql-connector-j-26.7.0.jar" view.Main
```

## Project Structure
to-do-list/
├── src/
│ ├── Controller/ # JavaFX controllers
│ ├── Model/ # Data models and database logic
│ ├── util/ # Utility classes
│ └── view/ # FXML files, CSS, images, and Main entry point
├── bdd.txt # SQL schema (run this to set up the database)
├── compile.bat # Build script
└── README.md

## Database Schema

- **users** — user account information
- **tasks** — task data linked to users
- **notes** — user-created notes
- **notification** — system and reminder notifications
- **task_shares** — task sharing relationships between users

## Note

This project was originally developed as a group project for academic purposes.

