# Submission Reminder App

## Description
The **Submission Reminder App** is a basic application designed to alert students about upcoming assignment deadlines. It is built using shell scripting and automates the process of checking student submission statuses. The app reads a list of students and their submission statuses from a file (`submissions.txt`) and sends reminders to those who have not yet submitted their assignments.

### Key Features:
- **Automated Reminders**: The app checks the submission status of students and sends reminders for pending assignments.
- **Customizable Configuration**: The assignment details and deadlines can be configured in the `config.env` file.
- **Easy Setup**: The app comes with a setup script (`create_environment.sh`) that automates the creation of the required directory structure and files.

### How It Works:
1. The app reads the assignment details (name and days remaining) from the `config.env` file.
2. It checks the `submissions.txt` file for student records and identifies those who have not submitted the assignment.
3. It prints reminders for students who have not submitted their work.

---

## Installation and Setup

### Prerequisites
- A Linux-based operating system (or a Linux environment like WSL for Windows users).
- Bash shell.
- Git (optional, for cloning the repository).

### Steps to Install and Run
