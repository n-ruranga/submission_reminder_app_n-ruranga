
## Submission Reminder App
```markdown

## Description
The **Submission Reminder App** is a simple yet powerful application designed to help educators and students keep track of upcoming assignment deadlines. Built using shell scripting, this app automates the process of checking student submission statuses and sends reminders to those who have not yet submitted their assignments. It is lightweight, easy to use, and highly customizable.

### Key Features:
- **Automated Reminders**: The app checks the submission status of students and sends reminders for pending assignments.
- **Customizable Configuration**: The assignment details and deadlines can be configured in the `config.env` file.
- **Easy Setup**: The app comes with a setup script (`create_environment.sh`) that automates the creation of the required directory structure and files.
- **Scalable**: Supports multiple students and assignments, making it suitable for small to medium-sized classes.

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

### Steps to Install and Run the App

1. **Clone the Repository**:
   Open your terminal and run the following command to clone the repository:
   ```bash
   git clone https://github.com/n-ruranga/submission_reminder_app_n-ruranga.git
   ```

2. **Navigate to the Project Directory**:
   Change to the project directory:
   ```bash
   cd submission_reminder_app_n-ruranga
   ```

3. **Run the Setup Script**:
   Execute the `create_environment.sh` script to set up the application environment:
   ```bash
   bash create_environment.sh
   ```
   - When prompted, enter your name. This will create a directory named `submission_reminder_yourName`.

4. **Navigate to the Created Directory**:
   Move into the directory created by the setup script:
   ```bash
   cd submission_reminder_yourName
   ```

5. **Run the Application**:
   Start the application by running the `startup.sh` script:
   ```bash
   bash startup.sh
   ```

6. **View the Output**:
   The app will display the assignment details and a list of students who have not submitted their work.

---

## Repository Structure
The repository contains the following files and directories:
- `create_environment.sh`: Script to set up the application environment.
- `README.md`: This file, containing instructions and project details.
- `submission_reminder_yourName/`: Directory created by the setup script, containing:
  - `app/reminder.sh`: Main script for checking submissions.
  - `modules/functions.sh`: Helper functions for the app.
  - `assets/submissions.txt`: File containing student submission records.
  - `config/config.env`: Configuration file for assignment details.
  - `startup.sh`: Script to start the application.

---

## Example Output
When you run the application, you will see output similar to the following:
```
Starting the reminder app...

Running the reminder script...
Assignment: Shell Navigation
Days remaining to submit: 2 days
--------------------------------------------
Checking submissions in ./assets/submissions.txt
Reminder: Chinemerem has not submitted the Shell Navigation assignment!
Reminder: Divine has not submitted the Shell Navigation assignment!
Reminder: Grace has not submitted the Shell Navigation assignment!
```

---

## Customization
You can customize the app to suit your needs:
- **Add More Students**: Edit the `submissions.txt` file to include additional student records.
- **Change Assignment Details**: Update the `config.env` file to modify the assignment name and deadline.
- **Extend Functionality**: Modify the `reminder.sh` and `functions.sh` scripts to add new features.

---

## Contributing
If you'd like to contribute to this project, feel free to fork the repository and submit a pull request. Please ensure your code follows the existing style and includes appropriate documentation.

---

## License
This project is open-source and available under the MIT License. See the LICENSE file for more details.

---

## Contact
For questions or feedback, please contact:
- **Name**: Nshuti Ruranga
- **Email**: n.ruranga@alustudent.com
- **GitHub**: [n-ruranga](https://github.com/n-ruranga)
```
