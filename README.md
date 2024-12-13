# Kira Project

## Overview
The Kira Project is a demonstration of how malware can be built using common tools like PowerShell and executable files. It showcases the workflow of a malicious script designed to download and configure UltraVNC for remote access while camouflaging its activities. This project is intended for educational and demonstration purposes only.

**Warning**: This project is for learning and research purposes only. It should not be used for malicious intent. Unauthorized access or actions performed on a system without consent is illegal.

---

## Features

1. **Automated File Downloads**: Kira.exe downloads necessary files such as the UltraVNC executable, configuration files, and a decoy image (Kira.png).
2. **Configuration Setup**: Creates and hides configuration files necessary for UltraVNC operation.
3. **Remote Access Initialization**: Automatically runs UltraVNC to establish a remote session with an attacker machine.
4. **Decoy Execution**: Opens a harmless image (Kira.png) to distract the victim while the malware runs in the background.

---

## How It Works

1. **Execution**: The user runs `Kira2.exe`.
2. **File Download**: The executable downloads the following files from a predefined location:
   - `winvnc.exe`: The remote access tool.
   - Configuration files (`UltraVNC.ini`): Used to customize UltraVNC behavior.
   - `Kira.png`: A decoy image.
3. **Hiding Files**: The downloaded files are moved to a hidden folder to avoid detection.
4. **Running UltraVNC**:
   - The script executes `winvnc.exe` with the provided configuration.
   - A remote connection is initiated, allowing the attacker to control the system.
5. **Opening the Decoy**: The image file `Kira.png` is opened to minimize suspicion.

---

## Files Included

### 1. Kira2.exe
   - A compiled executable that performs the primary operations of the malware.

### 2. Kira2.ps1
   - A PowerShell script used to automate some actions (optional, for specific environments).

### 3. Flowchart.png
   - A detailed flowchart illustrating the workflow of the malware.

---

## How It's Built

### Tools Used
1. **Win-PS2EXE**: For converting the Powershell Script (Kira2.ps1) to executable file (Kira2.exe).
2. **PowerShell**: For scripting additional automation tasks.
3. **UltraVNC**: A legitimate tool repurposed for malicious remote access.
4. **Draw.io**: To create the flowchart for project documentation.

### Steps to Build
1. Write the PowerShell script (`Kira2.ps1`) for automating file downloads and setup.
2. Convert the PowerShell script (`Kira2.ps1`) to executable using Win-PS2EXE.
3. Test the script and executable in a controlled environment.

---

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/username/kira-project.git
   ```
2. Navigate to the project directory:
   ```bash
   cd kira-project
   ```
3. Run `Kira2.exe` in a controlled test environment.

---

## Disclaimer
This project is intended strictly for educational and research purposes. Misusing this project for malicious purposes is illegal and unethical. Always ensure you have proper authorization before testing or deploying scripts that interact with systems.

