## Class 05

#### Windows Command Line Tools

------

**Sysinternals Suite** by **Mark Russinovich**.



### Reading: What is an SMB Port? Ports 445 and 139

------

**Server Message Block Protocol** (SMB Protocol) is a client-server communication protocol used for sharing access to files, printers, serial portsm and data on a network.

It allows users or application to make requests to a file server and access resources on the remote server.

Originallu designed by Barry Feigenbaum at IBM in 1983 to run on top of NetBIOS over TCP/IP using port 139 and UDP ports 137 and 138.

By Microsoft Windows 2000, Microsoft had changed SMB to operate over port 445.

The SMB has spawned multiple dialects designed to meet evolving network requirements:

+ ### SMB 1.0 (1984)

+ ### Samba (1992)

+ ### CIFS (1996)

+ ### NQ (1998)

+ ### SMB 2.0 (2006)

+ ### Tuxera SMB (2009)

+ ### Likewise (2009)

+ ### SMB 2.1 (2010)

+ ### SMB 3.0 (2012)

+ ### MoSMB (2012)

+ ### SMB 3.02 (2014)

+ ### SMB 3.1.1 (2015)



Ports 139 and 445 aren't inherently dangerous, there are known issues with expposing these ports to the internet.

An open port can become a security risk when the service listening to the port is misconfigured, unpatched, vulnerable to exploits, or has poor network security rules.

SMBv1 weas exploited during the WannaCry ransomware attack through a zero-day exploit called EternalBlue.

To keep ports 139 and 445 secure:

+ Avoid Exposing SMB Ports
+ ‍Keep your systems up-to-date to avoid exploits of known vulnerabilities. Pach it.
+  If your data is important it should be backed up
+ Firewall or Endpoint protection
+ VPN
+ VLANs
+ MAC Address Filtering

### Review

------

Why should we follow a methodology when we can simply restart the computer and fix most problems?

+ Root cause anaysis
+ Continuous improvement
+ Problem documentation

**CompTIA troubleshooting methodology**

+ **STEP ONE:** Identify the problem
  + Gather information
  + Duplicate the problem, if possible (repro the problem)
  + Question users



### Windows CLI Tools

------

Windows CLI tools used for 

+ General systems maintenance
+ Repair issues on OS and apply latest group policy

### System File Checker

------

`sfc` runs the **System File Checker** tools to identify and repair system file integrity issues.

![Screenshot 2021-09-01 at 10.16.30](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-01 at 10.16.30.png)



### Check Disk

------

`chkdsk`runs the **Check Disk** toool that scans disk drives for health issues.

Checks the intire physical disk.

Hardrives manufactures leave extra bits of space for redundancy, in case there's a physical failure on the hard drive.

Back in the day people used to do *double spacing*. It worked until you had a hardrive failure.

![Screenshot 2021-09-01 at 11.40.23](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-01 at 11.40.23.png)

It's something that can be used to diagnose a bad volume.

### Group Policy Updater

------

`gpupdate`runs a **Group Policy Updater** tool.

Checks for any group policy updates and applies them immediately if `/force`is specified.

*A **group policy** comes down from domain controllers and is a way to essentially configure servers and desktops.*

A policy is a set of configurations. Group policy applies in several different ways:

+ Local policy - configured localy
+ Domain level - domain controller serving the policy (overwrites the local policy)

### Samba File Server

------

*Linux and windows don't often play nice together.* How they interact with each other? Moving files?

**Samba** is an older file sharing methodology. It allows Linux computers to manages files in Windows.

It uses the same protocol that Windows does. **Server Message Block** **SMB1**. On top of *NetBIOS* and *TCP/IP* interface.

The V1 is depricated, newer and more secure version include **SMB2.0**. **SMB3.0** and **SMB3.1.1**.

When security auditing is good to check if domain controllers are still usdem **SMB1**, attackers usually use these older depricated technologies to exploit weaknesses.

Installing *SAMBA* on Linux enables us to use this protocol to talk to Windows machines and file share.

![Screenshot 2021-09-01 at 12.30.57](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-01 at 12.30.57.png)

*Why use Samba?*

+ It's free, you don't need to buy a license.
+ Hosts file shares using a protocol compatible with Windows computers.
+ SMB protocol. **Server Message Block** uses **ports 139** and **445**.
+ The last version has end-to-end encryption.

*Why not use Samba?*

+ **SMBv1** is deprecated and has security issues.
+ Win10 does not install this by default but is compatible with it if condigured to do so.

### Initializing Processes

------

There are several ways to start a process:

Command prompt, power shell.

*Open `taskmanager` on windows*.

*Go to file and select `run new task`*. This window will run any executable that's under the `c/windows/system32`directory.

What processes run on Windows?

+ `explorer.exe`launches the Windows desktop GUI
+ `notepad.exe`launches Notepad
+ `Procmon.exe`(once installed) is an advanced process monitor.

![Screenshot 2021-09-01 at 13.38.32](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-01 at 13.38.32.png)

`regedit`Registry Editor

![Screenshot 2021-09-01 at 13.52.22](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-01 at 13.52.22.png)

+ `New`-> `Key`-> name it `ProcmonTest`

