#!/bin/bash

# Set the start date in the format "YYYY-MM-DD HH:MM:SS"
start_date="2021-01-01 22:30:00"

# Set the end date in the format "YYYY-MM-DD HH:MM:SS"
end_date="2023-11-01 22:30:00"

# Start Git repository
git init

# Convert start and end dates to Unix timestamps
start_timestamp=$(date -d "$start_date" "+%s")
end_timestamp=$(date -d "$end_date" "+%s")

# Loop that creates commits for each day
current_timestamp="$start_timestamp"
while [ "$current_timestamp" -lt "$end_timestamp" ]; do
    current_date=$(date -d "@$current_timestamp" "+%Y-%m-%d %H:%M:%S")
    git commit --allow-empty --date="$current_date" -am "Commit on $current_date"
    current_timestamp=$((current_timestamp + 86400))  # Advance one day in seconds (86400 seconds per day)
done

# Create the main branch
git branch -M main

# Configure connection to the remote repository
git remote add origin https://github.com/binarymath/empty_commits_.sh.git

# Send changes to the repository
git push -u origin main

