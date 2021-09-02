## Class 06

#### Windows Security Center

------

### Reading: Windows Defender Security Center in Windows 10

------

Windows Defender Security Center collects many of the pre-existing Windows security and privacy settings and makes them easily accessible. Acts like a dashboard for all the security features, including third-party security to give a clearer view of any risk the PC may face. Provides:

+ Virus & threat protection
+ Device performance & health
+ Firewall & network protection
+ App & browser control
+ Parental control and centralized family devices.

### Review

------

Windows CLI tools used for

+ General systems maintenance
+ Repair issues on OS and apply latest group policy

+ `sfc`runs the **System File Checker** tools to identify and repair system file integrity issues (all files have a hash value that is used to check for curruption)
+ `chkdsk`runs the **Check Disk** tool that scans disk drives for health issues (mention double spacing)
+ `gpupdate`runs a **Group Policy Updater** tool
+ Cmder adds Linux CLI commands in Windows on top of native 

##### Samba

+ FIle sharing software that allows Linux to tall to windows.

##### Initializing Processes

+ Manually start a process
+ Processes can be initialized from several places
  +  Run app
  + Command Prompt (cmd.exe)
  + Double-clicing the process's launcher executable (.exe) file
+ What processes run on Windows?
  + `chrome.exe`launches Google Chrome's process
  + `explorer-exe`launches the Windows desktop GUI
  + `notepad.exe`launches Notepad

### Windows Security Center

------

Windows groups all the security controls into one area.

You can also direct modify the registry, via scripting or automation,

Profiles are most of all for roaming devices.

+ Why do we need to know Windows security controls?
  + These controls are basic GUI operataions for an admin
  + Block network traffic

**Windows Defender** is basically Microsoft's anti-virus solution, used to be a comple joke when it came out, now defender is at a point where many organizations are using it. It's just as good as other's anti-virus out there and it's free.

+ Scans files for malware
+ Start or stop application by their name

Where can the Windows Security Center be accessed?

+ Searchable
+ Ovearching dashboard menu shows sub-components

![Screenshot 2021-09-02 at 12.34.12](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-02 at 12.34.12.png)

**Microsoft Defender Antinvirus** as previsously known as windows defender. The software that ships with Windows 10 and is enabled by default.

+ Detects and eliminates malware using both behavioral analysis (if it checks a certain behaviour, you shouldn't rely on it) and signature-based dectection (black list, 'i'm looking for this specific hash and making sure it doesn't run'). 

*Assuming breach* - Assume that clients that are internet facing, plug USB are compromised in a large org.



### Windows Firewall

------

**Defender is Microsoft's proprietary firewall.**

Typically you'll have what's called a *block rule* 'I don't allow anything in, all ports are blocked unless there's an execption'.

A **firewall** is a security access control that administratively blocks or permits traffics to pass through specific port numbers.

+ Each networked service on a computer uses a port number to talk to its equivalent on the destination computer.
+ **Stateful firewalls** allow outbout traffic if it was initialized by an approved inbound. Has some ability to change. 

+ **Stateless firewalls** don't understand connection are two-way and require configuration of outbound rules.
+ Monitors network traffic between this computer and everything else
+ Makes decision based on two traffic types:
  + Port
  + Service
+ Like all firewalls, *Windows Firewall* compares traffic to an internal ACL
+ An **Access Control List (ACL)** is a set of defined statements againts which your computer system compares incoming and outgoing traffic.
+ ACLs are found on many computer security systems, not just firewalls

### IANA The Internet Assign Numbers Authority

------

![Screenshot 2021-09-02 at 13.29.40](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-02 at 13.29.40.png)

There is a governing body around what IP addresses are used and for what purpose.

The **Internet Assigned Numbers Authority** is a standards organization that oversees global IP address allocation, autonomous system number allocation, root zone management in the **Domain Name System (DNS)**, media types, and other Internet Protocol-related symbols and Internet numbers".



### Task Manager

------

![Screenshot 2021-09-02 at 15.58.14](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-02 at 15.58.14.png)

Centralized dashboard showing currently-running processes and services.

A **service** is a program running in the background.

Services do not have a user interface.

`services.msc` on Windows