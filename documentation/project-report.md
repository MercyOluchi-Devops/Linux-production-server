# LINUX-PRODUCTION-SERVER PROJECT

## PROJECT SCENARIO

NEXATECH has rented a new ubuntu server.
My task is to prepare the server securely for hosting the company's website. This project demonstrates linux system adminisration skills, including server configuration, ssh hardening, user and group management, and project documentation.



## PROJECT OBJECTIVES

- Configure a linux
- Secure SSH access
- Create users and groups
- Create and organize company directories 
- Assign appropriate permission to directories
- Test permissions using different user accounts 
- Prepare the server for production
- Document every step


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



---

## LESSONS LEARNED

- Always verify SSH configuration before restarting the service.
- Proper documentation makes troubleshooting easier.



 

