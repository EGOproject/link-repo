@echo off

rem link repo to pc by EGOproject
rem save time creating and backing up your repositories

title Link-Repo @ EGOproject
echo Welcome to the link-repo setup interface!
echo.
echo.

rem username capture
set /p username=Enter your GitHub username: 
echo You entered: %username%
echo.
echo.

rem reponame capture and title setting
set /p reponame=Enter the name of repository:
echo You entered: %reponame%
title %reponame% *-@-* %username% ------------ Link-Repo @ EGOproject
echo.
echo.

rem repo description capture into readme.md and initializing git
set /p description=Enter a description for the repository: 
echo Description set to: %description%
echo %description% >> README.md
pause
echo.
git init
git add README.md
cls

rem first commit comment capture and committing
set /p icommit_message=Enter the commit message for the First Commit: 
echo First commit message: %icommit_message%
echo.
git commit -m "%icommit_message%"
pause
cls

rem repo url capture, main branch selected and making connection to remote repo
set /p repo_url=Enter the repository URL (e.g., https://github.com/username/repo.git): 
echo Repository URL set to: %repo_url%
git branch -M main
git remote add origin %repo_url%
pause
cls

echo Initializing Git repository...
git push -u origin main
cls

::making backup files

::git ignore
echo link-repo-windows.bat >> .gitignore
echo %reponame%-backup-offline.bat >> .gitignore
echo %reponame%-backup-online.bat >> .gitignore

:: Creating the online backup batch file
echo @echo off > "%reponame%-backup-online.bat"
echo echo checking connectivity >> "%reponame%-backup-online.bat"
echo ping www.github.com >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo checking repository status >> "%reponame%-backup-online.bat"
echo git status >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo Adding changes and new files for tracking >> "%reponame%-backup-online.bat"
echo git add . >> "%reponame%-backup-online.bat"
echo set /p commit_message=Enter the commit message for this Commit: >> "%reponame%-backup-online.bat"
echo echo Committing to local repo >> "%reponame%-backup-online.bat"
echo set full_commit_message=%%commit_message%% + " Backup by: %username% on %%date%% at %%time%%" >> "%reponame%-backup-online.bat"
echo git commit -m "%%full_commit_message%%" >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo pause >> "%reponame%-backup-online.bat"
echo cls >> "%reponame%-backup-online.bat"
echo echo updating local repo with remote changes >> "%reponame%-backup-online.bat"
echo git pull >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo updating remote repo with local changes >> "%reponame%-backup-online.bat"
echo git push >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo checking current status >> "%reponame%-backup-online.bat"
echo git status >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo. >> "%reponame%-backup-online.bat"
echo echo Commit completed with message: %%full_commit_message%% >> "%reponame%-backup-online.bat"
echo echo Backup and Update Complete!!! >> "%reponame%-backup-online.bat"
echo pause >> "%reponame%-backup-online.bat"

:: Creating the offline backup batch file
echo @echo off > "%reponame%-backup-offline.bat"
echo echo checking repository status >> "%reponame%-backup-offline.bat"
echo git status >> "%reponame%-backup-offline.bat"
echo echo. >> "%reponame%-backup-offline.bat"
echo echo. >> "%reponame%-backup-offline.bat"
echo echo Adding changes and new files for tracking >> "%reponame%-backup-offline.bat"
echo git add . >> "%reponame%-backup-offline.bat"
echo set /p commit_message=Enter the commit message for this Commit: >> "%reponame%-backup-offline.bat"
echo echo Committing to local repo >> "%reponame%-backup-offline.bat"
echo set full_commit_message=%%commit_message%% + " Backup by: %username% on %%date%% at %%time%%" >> "%reponame%-backup-offline.bat"
echo git commit -m "%%full_commit_message%%" >> "%reponame%-backup-offline.bat"
echo echo. >> "%reponame%-backup-offline.bat"
echo echo. >> "%reponame%-backup-offline.bat"
echo pause >> "%reponame%-backup-offline.bat"
echo cls >> "%reponame%-backup-offline.bat"
echo echo Commit completed with message: %%full_commit_message%% >> "%reponame%-backup-offline.bat"
echo echo Local Backup and Update Complete!!! >> "%reponame%-backup-offline.bat"
echo pause >> "%reponame%-backup-offline.bat"

echo Repository setup complete!
echo.
echo Making first backup!!
echo Follow EGOproject on GitHub for more!!
timeout /t 5
