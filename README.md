# APISECToolkit

This Bash script is designed to automate the installation of several useful software and tools in order to take Corey Ball's API Penetration Testing course at university.apisec.ai

Specifically, the script installs the following tools:

- proxy2swagger
- git
 -docker and docker-compose
- golang
- gobuster
- zaproxy
- postman
- jwt_tool
- kiterunner
- arjun

### Usage

1. Clone the repo
   ```sh
   git clone https://github.com/YoruYagami/APISECToolkit
   ```
2. Change Permission
   ```sh
   chmod +x APISECToolkit.sh
   ```
3. Execute
   ```sh
   sudo ./APISECToolkit.sh
   ```


Installation of all the tools is done by using the commands sudo apt-get install and sudo pip3 install to download and install the necessary packages, along with some configuration tasks.

The software will be installed in the /opt/ directory, and a symlink is created for each software so that the binaries can be accessed from the shell commands.

The script requires execution with administrator privileges (run with the sudo command) and cannot be run without such privileges.

Ultimately, the script simplifies the process of installing the listed software and tools, saving time.
