# LINUX-PRODUCTION-SERVER PROJECT

## PROJECT SCENARIO

NEXATech requires a Linux production server environment for hosting a company website and managing application/project files.

The goal of this project was to simulate the preparation of a production-style Linux server, including server configuration, security, website hosting, backup automation, firewall protection, monitoring, and alert logging.

The server environment was created using Ubuntu Linux running in Oracle VirtualBox.


## PROJECT OBJECTIVES

- Configure a linux
- Secure SSH access
- Create users and groups
- Create and organize company directories 
- Assign appropriate permission to directories
- Test permissions using different user accounts 
- Install and configure Nginx
- Host a company website
- Integrate the project with Git and GitHub
- Create an automated backup system
- Automate tasks using Cron
- Perform server health checks
- Configure a firewall
- Implement automated server health monitoring
- Implement basic alert logging
- Verify the complete server environment
- Document the configuration and troubleshooting process


## STEPS PERFORMED

### 1. Created the project Folder

Created the linux production server project folder for documentation and initialized Git.

### 2. Changed the Hostname

Changed the server hostnameto the company name (Nexatech).

### 3. Installed Openssh

Installed the openssh server because i am using VirtualBox


### 4. Secured SSH

Configured SSH by:
- Changing the SSH port
- Disabling root login 
- Restarting the SSH service for the changes to take effect
- Testing remote SSH access using Termius
Commands used:

```bash
sudo systemctl daemon-reload
sudo systemctl restart ssh.socket
```
### Remote SSH Access
I connected to the ubuntu server from another terminal using Termius to verify that SSH access was working correctly.

The connection was tested using the configured SSH port.


### 5. Created Users and Groups

Created the following groups:

- Admin
- Devops
- Developers
- Interns
- HR

Created users and assigned them to their respective groups.


### 6. Created the Company Directory Structure

Created the main NEXATECH company directory and the required folders inside it

The folderes were organized according to the company's departments and requirements.

The directory structure is:

```text
Company/
├── admin
├── developers  
├── devops  
├── hr  
└── intern
```

### 7. Assigned Directory Permissions

Assigned appropriate linux permissions to the company directories.

permissions were configured based on user and group access erquiremnts. 

This ensured that uses could access the directories they were authrized to use while restricting unauthourized access.

### 8. Tested Directory Permissions

After assigning the permissions, i tested the configuration using another user account.

I connected to the Ubuntu server from windows poweshell use SSHa with different linux user.

I then test access to do company directories.

The test was successful, confirming that the assigned permissions were working as intended.

### 9. Install Nginx

After testing the directory permissions, the next step was to install Nginx on the Ubuntu Linux server.

Nginx was installed to provide the webserver environment needed to host the portfolio website.

After installation, the Nginx service was checked to confirm that it was running successfully.

### 10. Preparing the Website Files

The portfolio website contained the following files:
- index.html
- style.css
- script.js

The index.html, style.css, and script.js files were the files required to display and run the website.

The website files were placed in the Nginx web directory at /var/www/html/.

The contents of the directory were checked and the portfolio files were confirmed to be present.

### 11. Nginx Service Verification

The Nginx service was checked after the website files were placed in the web directory.

The service was confirmed to be active and running, showing that the Nginx web server was functioning correctly.

The default Nginx page file was also encountered in the web directory. Since the portfolio had its own index.html, the portfolio's index.html was used as the main webpage.

### 12. Obtaining the Server IP Address

The IP address assigned to the Ubuntu virtual machine was obtained.

This IP address was required to access the website from the laptop while the website was being hosted on the VirtualBox server.

### 13. Testing the Hosted Website

The Ubuntu server's IP address was entered into the laptop's web browser.

The portfolio website successfully opened in the browser.

This confirmed that:

- Nginx was running correctly.

- The portfolio files were in the correct web directory.

- The Ubuntu server was successfully serving the website.

- The website could be accessed through the server's IP address.

### 14. Git and GitHub Verification

After successfully testing the hosted website, the Git repository was checked.

The repository showed that the branch was up to date with origin/main and that the working tree was clean.

This confirmed that there were no uncommitted changes that needed to be pushed to GitHub at that time.

### 15. Website Hosting Result

The portfolio website was successfully hosted on the Ubuntu Linux server using Nginx.

The website was accessed through the Ubuntu virtual machine's IP address and successfully displayed in a browser.

This completed the website-hosting stage of the Linux Production Server Project.

### 16. Backup Automation

To protect important project files, an automated backup script was created.

The backup script is located in:

scripts/backup.sh

The script was given executable permission using:

```chmod +x scripts/backup.sh
```
The script was then executed manually to confirm that the backup process was working correctly.

The backup process successfully created a backup and displayed a completion message with the backup timestamp.

### 17. Backup Verification
The backup directory was checked after running the backup script to confirm that the backup files were being created successfully.

This helped verify that the backup script was functioning as expected before automating the process.

### 18. Cron Job Automation
Cron was used to automate the backup process.

Cron allows scheduled tasks to run automatically at specified times without requiring the user to manually execute the command each time.

The backup script can therefore be scheduled to run automatically at a defined interval.

The cron jobs for the current user can be checked using:

```crontab -l
```
Cron was considered as part of the server automation process to ensure that backups can be performed regularly.

### 19. Server Configuration Verification
After configuring the server, the major components were checked to confirm that they were working correctly.

The following areas were verified:

- SSH configuration
- SSH security settings
- User and group permissions
- Project directory permissions
- Nginx web server
- Website files
- Website accessibility
- Backup script
- Backup directory
- Cron configuration

These checks helped confirm that the server was functioning as a basic production-style Linux environment.
 
### 21. Firewall Configuration

UFW (Uncomplicated Firewall) was configured to control incoming network connections to the server.

The required ports were allowed:

- TCP port 2003 for SSH
- TCP port 80 for HTTP
- TCP port 443 for HTTPS

After the required rules were added, UFW was enabled.

The firewall status was then checked to confirm that it was active and that the required rules were correctly configured.

The firewall was verified using:

```bash
sudo ufw status verbose
```

### 22. Firewall Verification

After enabling UFW, the firewall configuration was verified.

The SSH service was confirmed to remain accessible through port 2003.

Nginx was also checked to confirm that the web server remained active after the firewall was enabled.

The listening network ports were checked using:

sudo ss -tulnp

The verification confirmed that the firewall configuration did not prevent the required server services from operating.

### 23. Server Health Monitoring

A Bash script was created to monitor the basic health of the Linux server.

The monitoring script is located at:

```scripts/server_health.sh
```
The script checks:

- System uptime
- CPU/system load
- Memory usage
- Disk usage
- SSH service status
- Nginx service status

The script was made executable and tested manually.

The monitoring output provides a timestamped report showing the current health of the server.

### 24. Automated Health Monitoring

Cron was used to automatically execute the server health monitoring script.

The health check was configured to run every five minutes.

The output from the monitoring script was redirected to:

```logs/server_health.log
```

The log was checked after the scheduled interval.

New health-check entries with updated timestamps confirmed that Cron was successfully executing the monitoring script automatically.

This reduced the need to manually check the server's health.

### 25. Server Alert Monitoring

A Bash alert script was created to detect important server conditions.

The alert script is located at:

```scripts/server_alert.sh
```

The script checks:
- SSH service status
- Nginx service status
- Disk usage

 An alert is recorded if:

- The SSH service is unavailable
- The Nginx service is unavailable
- Disk usage reaches or exceeds 80%

### 26. Automated Alert Checking

Cron was configured to run the alert script automatically every five minutes.

The alert output was configured to be stored in:

```logs/server_alerts.log
```

The alert script was tested while the server was operating normally.

No service failure alert was generated because SSH and Nginx were active and disk usage was below the configured threshold.

This confirmed that the alert-checking script was able to evaluate the configured server conditions.

### 27. Final Production Server Verification

A final verification was performed after completing the server security, firewall, monitoring, and automation stages.

The following components were checked:

- SSH configuration
- SSH security settings
- SSH port 2003
- Root login restriction
- User and group permissions
- Project directory permissions
- Nginx web server
- Website accessibility
- Backup script
- Backup directory
- Cron configuration
- UFW firewall
- Server health monitoring
- Alert monitoring
- Disk usage
- Memory usage
- System load

The verification confirmed that the major components of the NexaTech Linux production server were functioning correctly.


## PROBLEMS ENCOUNTERED 

### SSH Port Issue 

After changing the SSH port, SSH continued listening on the old port.

Cause:

I forgot to remove the `#` from the new port line in the SSH configuration file.

Solution:

Removed the `#` , restarted the SSH service, and verified that SSH was listening on the new port.

### Accessing Images

I had difficulty accessing the images stored on my  laptop from the Ubuntu server in VirtualBox. The images were not showing because the VirtualBox shared-folder feature was not working properly.

Resolution:

I installed and configured the required VirtualBox Guest Additions. After that, the shared files became accessible from Ubuntu, and I was able to see the images.

### Cron Output Issue

Cron initially displayed:

```no MTA installed, discarding output
```
This occurred because Cron was attempting to handle command output through email.

The issue was resolved by redirecting the script output directly to the appropriate log file.


## LESSONS LEARNED

- Always verify SSH configuration before restarting the service.
- How cron can automate repititive tasks.
- How to automate server- Proper documentation makes troubleshooting easier. health checks
- How to configure a Linux firewall using UFW
- How to monitor server resources and services
- How to create basic server alert checks
- How to troubleshoot Cron jobs
- The importance of using the correct file paths
- The importance of Linux being case-sensitive
- The importance of regularly backing up important data
- The importance of keeping backups separate from the production server
- The importance of testing and verifying configuration changes
- Proper documentation makes troubleshooting easier.


### Future Improvements

Although the main project has been completed, the server can be improved further to make the environment more resilient and closer to a real-world production infrastructure.

Future improvements could include:

- Storing backups on a separate server or cloud storage
- Implementing HTTPS with SSL/TLS
- Improving backup retention and rotation
- Sending monitoring alerts through an external notification service
- Implementing CI/CD deployment
- Adding centralized logging
- Implementing more advanced monitoring
- Adding infrastructure-as-code
- Implementing containerization with Docker
- Adding more advanced security monitoring


