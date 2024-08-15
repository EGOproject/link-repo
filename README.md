

# Link-Repo Setup Interface

## Problem Statement

Connecting and initializing GitHub repositories on a local machine can be a time-consuming and error-prone process. Developers often face repetitive tasks when linking repositories, especially during the initial setup and configuration. Our goal is to simplify this process with a script-based solution that automates repository creation and backup management. This project was created by the EGOproject team, with special thanks to our community of contributors for their invaluable input and testing.

## Features

### Automated Repository Initialization

- **Setup Interface**: A user-friendly interface to guide you through the repository setup process, ensuring all necessary configurations are made efficiently.
- **Custom README**: Automatically create a `README.md` file with your repository description, serving as a starting point for documentation.

### User Input for Personalization

- **GitHub Username Capture**: Input your GitHub username once, and the script will utilize it throughout the process for a personalized experience.
- **Repository Details**: Specify the repository name and description, which are integrated into the README file and the initial commit.

### Remote Repository Configuration

- **Branch and Remote Setup**: The script initializes the main branch, connects to your remote GitHub repository, and pushes your initial commit, saving you from manually running multiple Git commands.

### Backup Scripts Creation

- **Online Backup Script**: Automatically generated script to push local changes to your GitHub repository, ensuring your work is continuously saved and updated.
- **Offline Backup Script**: For environments without internet access, the script allows local commits, preserving your changes until you can push them online.

### Cross-Platform Compatibility

- **Windows (`.bat`) and Unix (`.sh`) Scripts**: Separate scripts are provided to ensure seamless operation on Windows, macOS, and Linux systems.

## How to Use the App

### Prerequisites

- **Git**: Ensure Git is installed on your system.
  - macOS: Install via [Homebrew](https://brew.sh/):
    ```bash
    brew install git
    ```
  - Linux: Use your distribution's package manager:
    - Debian/Ubuntu:
      ```bash
      sudo apt-get install git
      ```
    - Fedora:
      ```bash
      sudo dnf install git
      ```
    - Arch:
      ```bash
      sudo pacman -S git
      ```
  - Windows: Download and install Git from the [official website](https://git-scm.com/download/win).

### Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/EGOproject/link-repo-to-pc.git
   cd link-repo-to-pc
   ```

2. **Copy the Script to the Target Directory**:
   - Before running the script, copy it to the directory you intend to transform into a Git repository.

3. **Run the Setup Script**:
   - **Windows**: Double-click `link-repo-windows.bat` to execute the setup script.
   - **Unix (Linux/macOS)**:
     ```bash
     chmod +x link-repo.sh
     ./link-repo.sh
     ```

4. **Follow the On-Screen Prompts**:
   - Enter your GitHub username.
   - Specify the repository name.
   - Provide a description for your repository.
   - Input the initial commit message.
   - Enter the URL of your GitHub repository.

5. **Backup Script Creation**:
   - After setup, the interface generates backup scripts:
     - `reponame-backup-online.bat` / `.sh`: Includes connectivity checks and pushes updates to GitHub.
     - `reponame-backup-offline.bat` / `.sh`: Commits changes locally without pushing to GitHub.

### Backup Usage

- **Online Backup**:
  - Windows: Double-click `reponame-backup-online.bat`.
  - Unix: Run `reponame-backup-online.sh`.
    ```bash
    chmod +x reponame-backup-online.sh
    ./reponame-backup-online.sh
    ```

- **Offline Backup**:
  - Windows: Double-click `reponame-backup-offline.bat`.
  - Unix: Run `reponame-backup-offline.sh`.
    ```bash
    chmod +x reponame-backup-offline.sh
    ./reponame-backup-offline.sh
    ```

### Note

- **File Permissions**: Ensure your backup scripts have the necessary permissions to execute. For Unix systems, use `chmod +x script_name.sh` to make scripts executable.

## Open for Improvement

We believe in the power of community and open-source collaboration. This project is open for improvements and contributions. Feel free to fork the repository, submit pull requests, and share your suggestions via issues. Together, we can make the Link-Repo Setup Interface even more robust and user-friendly.

### Contact

For questions, feedback, or support, please reach out to the EGOproject team at [our GitHub page](https://github.com/EGOproject).

---

This README provides a comprehensive guide to the project, outlining the problem it addresses, the features it offers, how to use it on both Windows and Unix platforms, and how to engage with the community for improvements.