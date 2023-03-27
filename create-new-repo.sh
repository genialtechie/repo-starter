#!/bin/bash

# Prompt the user for the folder name
echo "Enter the name of the folder you want to create:"
read folder_name

# Create the new folder
mkdir "$folder_name"

# Navigate to the new folder
cd "$folder_name"

# Initialize a Git repository
git init

# Create a README.md file with the folder name as its content
echo "# $folder_name" > README.md

# Add and commit the README.md file
git add README.md
git commit -m "Initial commit"
git branch -M main

# Prompt the user for their GitHub username
echo "Enter your GitHub username:"
read github_username

# Generate the remote Git repository URL
remote_repo="https://github.com/$github_username/$folder_name.git"

# Push the initial commit to the remote Git repository
git remote add origin "$remote_repo"
git remote set-url origin git@github.com:$github_username/$folder_name.git
git push -u origin main

echo "Folder created and initial commit pushed to remote Git repository."
