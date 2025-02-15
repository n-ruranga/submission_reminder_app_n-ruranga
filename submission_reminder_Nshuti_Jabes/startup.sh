#!/bin/bash
echo -e '\nStarting the reminder app...\n'

# Check if the reminder.sh script exists and is executable
if [[ -x "./app/reminder.sh" ]]; then
    echo -e 'Running the reminder script...\n'
    bash ./app/reminder.sh
else
    echo -e 'Error: reminder.sh script not found or not executable.\n'
    exit 1
fi
