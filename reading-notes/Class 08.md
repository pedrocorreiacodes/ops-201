## Class 08

## System Log Analysis & Registry

------

### Reading: Windows Registry Demystified

------

The Windows Registry is a collection of

 several databases where Windows and many programs store their configuration settings.

Thre are system-wide registry settings that apply to all users, and each Windows user account also has its own user-specific settings.

+ System-wide registry settings are store in files under `C:\Windows\System32\Config\`.
+ User account use the NTUSER.dat file containing user-specific keys in its `C:\Windows\Users\Name` directory.

Windows loads the settings from these files into memory on startup. Programs can also check the registry stored in memory to find  configuration settings.

Registry contains:

+ Keys
+ Values
+ Groups of keys and values called **hives**.

Not all programs store all their settings in the Windows registry. Each program developer can decide to use the registry for every setting, just a few settings, or no settings. Some programs store all (or just some) of their setting in configurations files under your Application Data folder.

It's always recommended to backup the registry, changing things can cause harm and potentially even render Windows unbootable.

*Registry Hacks* that connect directly to the syllabus.

[Disable SMBv1 on Windows 7 for Security](https://www.howtogeek.com/321072/how-to-disable-smbv1-and-protect-your-windows-pc-from-attack/): For security reasons, the old SMBv1 file sharing protocol is now disabled by default on Windows 8 and Windows 10 and  It’s still enabled by default on Windows 7.



### Review

------

Remote access:

+ GUI: RDP.

+ CLI: Powershell remoting and SSH.

+ Native protocols RDP and SSH.

*For SOHO network, how we do get public internet traffic pointed to a computer on our personal network?*

*Port forwarding, configured on the router*! Route public information into private addresses.

+ What is required to RDP from outside the network?
+  Port forwarding
  + If the user is the only user of this service on then give port, we can foward all port traffic to the LAN PC.
  + Not ideal for most business environments, but can be good in home networks.
+ **Virtual Private Network** encrypts traffic over the internet allowing secure remote access to a host in a private network. *When you're using a VPN, you're creating a tunnel from your existent private network to the private network of the destination*.
+ What is most useful for a sysadmin (they don't care about security, they just care about getting the job done)?
  + Desktop or shell
+ Powershell can use Windows Remoting, often referred to as **WinRM**. This is encrypted natively and supports cert backed encryption as well. Utilizes port 5985 and for SSL por 5986. As a security analist you should be using 5986.

### Windows Event Viewer

------

When Windows crashes, it will generate a **Blue Screen of Death (BSoD)** which is an error splash screen containing memory addressing and a stop code.

+ Why might we use WIndows Event Viewer?
  + Evidence of an incident (What happened before this computer blue screened?)
  + Troubleshooting 
  + Detection of issues or threats
  + Establishing security baseline
+ What might error codes look like?
+ Feel free to Google error codes, but always check the context.

`mmc.exe`

`eventvwr.msc`

+ Application - event logs for applications, store data from applications.
+ System - core operating system and hardware.
+ Security - Successfull audits of security events or someone failing to access.

![Screenshot 2021-09-03 at 17.34.49](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-03 at 17.34.49.png)



### Windows Error Types

------

**ERROR** An event that indicates a significant problem such as loss of data or loss of functionality.

**WARNING** An event that is not necessarily significant, but may indicate a possible future problem.

**INFORMATION** An event that describes the succesful operation of an application, driver, or service.

**Success Audit** An event that record an auidted security access attempt that is successful.

**Failure Audit** An event that record an audited security access attempt that fails.



### Windows Registry Editor

------

The configurations for everything in Windows and also applications that run on windows.

When we make changes in the GUI the only thing we're making are an alteration on the registry (the backend).

*If you want to make thousand of changes the registry is the way to go.*

*Group policy is a GUI tool to perform administration of servers and desktops.*

*Attackers know about the registry as well, for example, elevating their account to admin status.*

*Open the Windows Registry*

`regedit`

`regedit.msc`

The **Windows Registry** is a local database storing critical configuration for various parts of the computer.

First of all make a backup of the registry in case you mess something up, 

`file -> export`

*What would do a motivation to backup the registry?*

*Boot into windows safe mode and boot from the backup*

![Screenshot 2021-09-13 at 12.53.29](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-13 at 12.53.29.png)

software to start up when the system logs in.

The registry contains registry *values* (which are instructinos), located within registry **keys** (folders that contain more data), all within one of several registry *hives* (folders that categorize all the data in the registry using subfolders). Making changes to these values and keys using Registry Editor change the configuration that a particular value controls.

*Different folders so that application don't get confused.*

*Registry constantly referenced by Windows, other apps*.

Configuration changes saved to registry may not apply until reboot.



#### ROBOCOPY

------

Executable in windows that allows us to copy things. Directories etc... 

*25 year ago batch was what you use to perform automations.*

#### Active Directory

------

*It's a directory service, it store data for large companies; who are my users, who are my admins etc...*

Gets hit by attackers all the time, if they can pop active directory they can compromise the company.

Replicatable database.

It stores also passwords.

Threat actors get into the active directory through the desktop.

**Protecting the Active Directory should be at the core of every security analyst objective**.

It's a very powerful tool for admins to push configuration changes.

![Screenshot 2021-09-13 at 15.19.20](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-13 at 15.19.20.png)

