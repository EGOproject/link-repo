#!/bin/bash

# link repo to pc by EGOproject
# save time creating and backing up your repositories

# Setting the title (this works in some terminal emulators)
echo -ne "\033]0;Link-Repo @ EGOproject\007"

echo "Welcome to the link-repo setup interface!"
echo
echo

# Username capture
read -p "Enter your GitHub username: " username
echo "You entered: $username"
echo
echo

# Repo name capture and title setting
read -p "Enter the name of repository: " reponame
echo "You entered: $reponame"
echo -ne "\033]0;$reponame *-@-* $username ------------ Link-Repo @ EGOproject\007"
echo
echo

# Repo description capture into README.md and initializing git
read -p "Enter a description for the repository: " description
echo "Description set to: $description"
echo "$description" > README.md
read -p "Press Enter to continue..."
echo
git init
git add README.md
clear

# First commit comment capture and committing
read -p "Enter the commit message for the First Commit: " icommit_message
echo "First commit message: $icommit_message"
echo
git commit -m "$icommit_message"
read -p "Press Enter to continue..."
clear

# Repo URL capture, main branch selection, and making connection to remote repo
read -p "Enter the repository URL (e.g., https://github.com/username/repo.git): " repo_url
echo "Repository URL set to: $repo_url"
git branch -M main
git remote add origin "$repo_url"
read -p "Press Enter to continue..."
clear

echo "Initializing Git repository..."
git push -u origin main
clear

# Making backup files
echo "link-repo.sh" >> .gitignore
echo "$reponame-backup-online.sh" >> .gitignore
echo "$reponame-backup-offline.sh" >> .gitignore

# Creating the online backup shell script
cat << EOF > "$reponame-backup-online.sh"
#!/bin/bash
echo "Checking connectivity"
ping -c 3 www.github.com
echo
echo
echo "Checking repository status"
git status
echo
echo
echo "Adding changes and new files for tracking"
git add .
read -p "Enter the commit message for this Commit: " commit_message
echo "Committing to local repo"
full_commit_message="\$commit_message Backup by: $username on \$(date)"
git commit -m "\$full_commit_message"
echo
echo
read -p "Press Enter to continue..."
clear
echo "Updating local repo with remote changes"
git pull
echo
echo
echo "Updating remote repo with local changes"
git push
echo
echo
echo "Checking current status"
git status
echo
echo
echo "Commit completed with message: \$full_commit_message"
echo "Backup and Update Complete!!!"
read -p "Press Enter to continue..."
EOF
chmod +x "$reponame-backup-online.sh"

# Creating the offline backup shell script
cat << EOF > "$reponame-backup-offline.sh"
#!/bin/bash
echo "Checking repository status"
git status
echo
echo
echo "Adding changes and new files for tracking"
git add .
read -p "Enter the commit message for this Commit: " commit_message
echo "Committing to local repo"
full_commit_message="\$commit_message Backup by: $username on \$(date)"
git commit -m "\$full_commit_message"
echo
echo
echo "Commit completed with message: \$full_commit_message"
echo "Local Backup and Update Complete!!!"
read -p "Press Enter to continue..."
EOF
chmod +x "$reponame-backup-offline.sh"

echo "Repository setup complete!"
echo
echo "Making first backup!!"
echo "Follow EGOproject on GitHub for more!!"
sleep 5
