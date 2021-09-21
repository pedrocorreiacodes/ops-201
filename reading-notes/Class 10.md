## Class 10

#### Imaging, Backup and Recovery

#### Reading: How to: Get started with Veeam Backup Free Edition

------

According Rick Vanover in *How to: Get started with Veeam Backup Free Edition*, Veeam Backup Free Edition can be summarized into three categories:

+ VeamZIP: Allows the creation of backups of running VM. The backup will be deduplicated and compressed, resulting in significantly lower backup storage requirements.
  + Ideal for updating, archiving or copy a VM to a remote host or test lab.
+ Powerful and flexible restores:  Supports several data recovery scenarios, from reovering a single VM file to restoring an intire VM.
+ Quick Migration: Allows the migration of live VMs between hosts or datastores without requiring clusters, shared storage or advanced functionality.



#### Review

------

We talked about diferent types of backup so far, **snapshots**, **robocopy**. General we want a fast recovery solution. Recovery software is generally the same.

*What happens we if loose the host system?*

*Even if we have snapshots for the VM's if they are stored in the host, they are gone*.



#### Review: Email Protocols

------

*As a security analyst what are you looking for (in an internal network) to ensure that nobody can send an email anonimously ou mess with the from adress field?*

**SMTP relay**

+ Secure relay
+ Open relay

**Email Protocols**

+ **IMAP (Internet Message Acess Protocol)** is an inbound configuration what will allow you to manage a mailbox from multiple devices and synchronize with the mail server, which keeps a copy of all received emails.
  + Default IMAP **port number: 143**
  + IMAP over SSL (**IMAPS**) **port number: 993**
+ **MAPI** is the protocol used by Microsoft Exchange Servers that communicate with their clients **Microsoft Outlook**.
+ **Remote Procedure Call RPC:** Use to dynamicaly open and close ports on a server.

**What file extensions do emails use:**

+ .eml
+ .emlx
+ .msg
+ .mbx

**How is the use of email monitored to prevent abuse?**

+ Law enforcement
+ Corporate policy, monitoring, and systems administration.
+ Domain reputation MX Toolbox domain email blacklist

The two major virtualizer are VMware and Hyper-V.



##### Demo

------

Command to return current system and user processes in windows:

```powershell
get-process
```

Show all the properties of `wlms`process:

```powershell
$processes=get-process -name wlms
$processes | select *
$processes.cpu
```

Sort processes by CPU circle:

```powershell
get-process | sort CPU
```

Get process by name:

```powershell
get-process | where-object {$_.name eq "wlms"}
```

Get process by name and sort by CPU:

```powershell
get-process | where-object {$_.name eq "wlms"} | sort cpu
```

Get processes by wild card search:

```powershell
get-process | where-object {$_.name -like "*host*"}
```

