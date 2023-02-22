
# APISECToolkit

This Bash script is designed to automate the installation of several useful software and tools in order to take Corey Ball's API Penetration Testing course at university.apisec.ai

Specifically, the script installs the following tools:

- proxy2swagger
- git
- docker
- docker-compose
- golang
- gobuster
- zaproxy
- postman
- jwt_tool
- kiterunner
- arjun

and download the following two labs in the /opt/lab/ directory

- crAPI
- vAPI

## Run Locally

Clone the project

```bash
  git clone https://github.com/YoruYagami/APISECToolkit
```

Go to the project directory

```bash
  cd APISECToolkit
```

Change Permission

```bash
  chmod +x APISECToolkit.sh
```

Execute

```bash
  sudo ./APISECToolkit.sh
```

The software will be installed in the /opt/ directory, and a symlink is created for each software so that the binaries can be accessed from the shell commands.

The script requires execution with administrator privileges (run with the sudo command) and cannot be run without such privileges.
