# Linux Production server

## Project Overview

This project simulates preparing a linux production server for NEXATECH, a fictional company. 

The goal is to configure  an ubuntu server for hosting a company website while applying Linux system administration,user management, file permissions, and security practices.

## Objectives

- Configure on Ubuntu Linux server
- Create users and group 
- Assign appropriate permissions 
- Create and organize company directories
- Configure and secure SSH
- Test remote access
- Host a website using Nginx
- Backup automation
- Task scheduling
- Firewall configuration
- Server monitoring
- Troubleshooting
- Document the server configuration

## Technologies Used

- Ubuntu Linux
- Oracle VirtualBox
- OpenSSH
- Git and Github
- Powershell
- Termius
- Bash
- Nginx
- Cron
- UFW
- Server Monitoring & Alerting
- HTML/CSS/JavaScript

## Work Completed

- Configured the Ubuntu server
- Created users and groups
- Created the NEXATech company directory
- Created required subdirectories inside the company directory
- Assigned appropriate permissions to directories
- Tested directory access using another user
- Connected to the server remotely using PowerShell
- Verified that the assigned permissions worked correctly
- Configured and secured SSHInstalled and configured Nginx
- Deployed the portfolio website to the Nginx web directory
- Verified that Nginx was active and running
- Accessed the hosted portfolio using the server IP address
- Successfully tested the website in a web browser
- Verified the Git repository was up to date with GitHub
- Bash backup script creation
- Backup testing and verification
- Cron job automation
- Server health checks
- Automated server health monitoring
- Server health logging
- UFW firewall configuration
- Firewall verification
- Automated alert checking
- Final server verification 
- Documented the setup and troubleshooting process

## Project Structure

```text
linux-production-server/
│
├── README.md
│
├── documentation/
│   └── project-documentation.md
│
├── scripts/
│   ├── backup.sh
│   ├── server_health.sh
│   └── server_alert.sh
│
├── backup/
│   └── automated/
│
├── logs/
│   ├── server_health.log
│   └── server_alerts.log
│
└── website/
    ├── index.html
    ├── style.css
    └── script.js
```

## Documentation

Detailed implementation steps, permission configuration, and troubleshooting can be found in:

documentation/project-report.md
