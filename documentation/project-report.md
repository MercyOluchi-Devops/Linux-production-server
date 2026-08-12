x# LINUX-PRODUCTION-SERVER PROJECT

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

![Installed Openssh](Screenshot/Installing%20SSH)

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

![SSH Configuration](Screenshot/SSh%20Configuration.png)

### 5. Created Users and Groups

Created the following groups:

- Admin
- Devops
- Developers
- Interns
- HR

Created users and assigned them to their respective groups.

![Created Users and Groups](Screenshot/Users%20and%20Groups.png)

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
[Company Directory](Screenshot/Company$20Directories)

### 7. Assigned Directory Permissions

Assigned appropriate linux permissions to the company directories.

permissions were configured based on user and group access erquiremnts. 

This ensured that uses could access the directories they were authrized to use while restricting unauthourized access.

### 8. Tested Directory Permissions

After assigning the permissions, i tested the configuration using another user account.

I connected to the Ubuntu server from windows poweshell use SSHa with different linux user.

I then test access to do company directories.

The test was successful, confirming that the assigned permissions were working as intended.

[Tested Permississions](Screenshot/Testing$20Permission$20for%20Directory) 


## PROBLEMS ENCOUNTERED 

### SSH Port Issue 

After changing the SSH port, SSH continued listening on the old port.

Cause:

I forgot to remove the `#` from the new port line in the SSH configuration file.

Solution:

Removed the `#` , restarted the SSH service,vand verified that SSH was listening on the new port. 

---

## LESSONS LEARNED

- Always verify SSH configuration before restarting the service.
- Proper documentation makes troubleshooting easier.



 

