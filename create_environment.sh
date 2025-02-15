#!/bin/bash

# Ask the user for their name
echo -e "\nPlease enter your name:"
read userName

# Create the main directory with the user's name
mainDir="submission_reminder_$userName"
echo -e "\nCreating main directory: $mainDir\n"
mkdir -p "$mainDir"

# Create the subdirectories
subdirs=("app" "modules" "assets" "config")
for dir in "${subdirs[@]}"; do
    echo -e "Creating subdirectory: $mainDir/$dir\n"
    mkdir -p "$mainDir/$dir"
done

# Create the necessary files
files=("app/reminder.sh" "modules/functions.sh" "assets/submissions.txt" "config/config.env" "startup.sh")
for file in "${files[@]}"; do
    echo -e "Creating file: $mainDir/$file\n"
    touch "$mainDir/$file"
done

# Populate the files with provided content
echo -e "Populating files with content...\n"

# Populate reminder.sh
echo "#!/bin/bash

# Source environment variables and helper functions
source ./config/config.env
source ./modules/functions.sh

# Path to the submissions file
submissions_file=\"./assets/submissions.txt\"

# Print remaining time and run the reminder function
echo \"Assignment: \$ASSIGNMENT\"
echo \"Days remaining to submit: \$DAYS_REMAINING days\"
echo \"--------------------------------------------\"

check_submissions \$submissions_file" > "$mainDir/app/reminder.sh"

# Make reminder.sh executable
chmod +x "$mainDir/app/reminder.sh"
echo -e "Made $mainDir/app/reminder.sh executable.\n"

# Populate functions.sh
echo "#!/bin/bash

# Function to read submissions file and output students who have not submitted
function check_submissions {
    local submissions_file=\$1
    echo \"Checking submissions in \$submissions_file\"

    # Skip the header and iterate through the lines
    while IFS=, read -r student assignment status; do
        # Remove leading and trailing whitespace
        student=\$(echo \"\$student\" | xargs)
        assignment=\$(echo \"\$assignment\" | xargs)
        status=\$(echo \"\$status\" | xargs)

        # Check if assignment matches and status is 'not submitted'
        if [[ \"\$assignment\" == \"\$ASSIGNMENT\" && \"\$status\" == \"not submitted\" ]]; then
            echo \"Reminder: \$student has not submitted the \$ASSIGNMENT assignment!\"
        fi
    done < <(tail -n +2 \"\$submissions_file\") # Skip the header
}" > "$mainDir/modules/functions.sh"

# Populate submissions.txt with 15 student records
echo "student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Bob, Shell Navigation, submitted
Alice, Git, not submitted
Charlie, Shell Basics, not submitted
David, Shell Navigation, submitted
Eve, Git, not submitted
Frank, Shell Basics, submitted
Grace, Shell Navigation, not submitted
Hank, Git, submitted
Ivy, Shell Basics, not submitted
Jack, Shell Navigation, submitted
Karen, Git, not submitted
Laura, Shell Basics, submitted" > "$mainDir/assets/submissions.txt"

# Populate config.env
echo "# This is the config file
ASSIGNMENT=\"Shell Navigation\"
DAYS_REMAINING=2" > "$mainDir/config/config.env"

# Create the startup.sh script
echo "#!/bin/bash
echo -e '\nStarting the reminder app...\n'

# Check if the reminder.sh script exists and is executable
if [[ -x \"./app/reminder.sh\" ]]; then
    echo -e 'Running the reminder script...\n'
    bash ./app/reminder.sh
else
    echo -e 'Error: reminder.sh script not found or not executable.\n'
    exit 1
fi" > "$mainDir/startup.sh"

# Make the startup.sh script executable
chmod +x "$mainDir/startup.sh"
echo -e "Made $mainDir/startup.sh executable.\n"

# Final message with decorations
echo -e "\n\n"
echo "==============================================="
echo -e "\nTo run the application, follow these steps:\n"
echo "1. Navigate to the project directory:"
echo "   cd $mainDir"
echo "2. Run the startup script:"
echo "   bash startup.sh"
echo -e "\n================================================"
echo -e "\n"
