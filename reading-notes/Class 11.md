## Class 11

#### Data Restoration, Startup Repair, and Secure Disposal

------



#### Readings: SSD Data Recovery Best Practices

------

SSD failures are hard to detect. They can operate in silence until they simply stop functioning but they do display warning signals. Somo common indicators that an SSD may be aproaching read/write cycle limit or is experiencing physical issues:

+ **Bad blocks.** Storage segments that, through memory corruption or physical damage, empede data storage and retrieval functions.
  +  **Key symptoms:** Saving, reading, and moving files may result in failure; active applications may operate slowly or frequently crash. User may receive prompts to repair the file system; and general performance may steadily decrease, especially when handling large files.
  + Run software that searches for physical defects. Back up essential files and replace SSD:
+ **File system repair.** If a computer or file system requires repair but physical defect software shows no damage, this could indicate an issue with the connector port.
  + Back up the files and proceed to repair: Mac OS - Disk Utility, Linux - sck utility and other software options for different operating systems.
+ **Crashing.** If a computer crashes while booting up but seems to work normally after several reboots, the SSD is probably failing.
  + Run software to assess the performance and health of your SSD.
  + Reinstall your OS after you’ve cleared data on the partition set.
+ **Read-only mode. (Not common).** It's possible for SSDs to cease functioning except in read-only mode.
  + Drive is possibly corrupted. Back up imporant data.

**How to fix a failed SSD?**

If the problem is physical like hardware damage or degraded flash cells, the SSD may need to be replaced-

If it's a logical error, bad blocks, software malfunctions, malware, outdated firmware:

+ **Formatiing the drive, redownloading the operative system.**
+ **Power Cycling the SSD.** If the SSD drive becomes corrupted through power failure.
+ **Idling the boot menu.** On a PC, boot into BIOS and sit at the BIOS screen. On a Mac, get to the boot menu by turning on the computer while holding down the ALT key.
+ **Updating SSD firmware**. Run a firmware update tool to check whether the SSD has the latest version. If it doesn’t, install it and wait to see if functionality (and data access) is restored.
+ **Updating drivers.** In Windows, check the Device Manager, go to Disk Drives, and right-click the SSD to update the driver.

**Is it possible to recover data from a failed SSD?**

Data recovery from SSD storage is achievable with the right tools. Many data recovery programs have recovery wizards that scan SSDs for deleted files and allow MSPs to restore partitions or any individual files they need.

**SSD protection best practices**

It's better to take precautions than to take measures after data loss ocourrs.

+ Download a program from a selection of existing free software options designed to monitor SSD health by tracking operating temperature and performance metrics.
+ Many SSDs come equipped with S.M.A.R.T. (Self-Monitoring, Analysis, and Reporting Technology) that warns users of potential failure and prompts them to take preventative measures.
+ Have a backup strategy. Backup data regularly and routinely, even if your SSD was purchased recently.

#### Readings: How to Erase a Hard Drive Using DBAN

------

**Darik's Boot And Nuke (DBAN)** is a free data destruction program that allows to completely erase all files on a hard drive. Including every installed application, personal files and the operating system.

DBAN has to run while the operating system isn't in use.

Download the *ISO file* and create a bootable device.

Restart the system and boot into the DBAN bootable device.

DBAN can work in one of two ways:

+ Enter a command at the bottom of the screen to immediately start erasing all the hard drives you have plugged into your computer, using a predefined set of instructions.
+ Choose the hard drives you want to erase, as well as select exactly how you want them to be deleted.

Commands that DBAN supports and data sanitization method:

- **dod** - DoD 5220.22-M
- **dodshort** - Same as **dod** except only 3 passes are run instead of 7
- **ops2** - RCMP TSSIT OPS-II
- **gutmann** - Gutmann
- **prng** - Random Data
- **quick** - Write Zero

DBAN recommends using the **dodshort** command.

Interactive mode lets you customize exactly how DBAN will erase files, as well as which hard drives it will wipe. You can get to this screen with the **ENTER** key from DBAN's main menu.

d

#### Intro

------

**Zero out a hard drive** - Resetting every bit on the harddrive to zero.

*Hard drives can be double spaced, when format a drive we are just formatting the 'space that we can see', it's not formatting the safety boot margin, so event if we format it there's recoverable chunks of data.*

*To actually get rid of all the data on the drive is extremely expensive and time consuming.*



#### Data Restoration

------

*We understand why we backup data, data is the most important thing to clients.*

Over time, through normal use or malware, system or software files can become corrupted (damaged and unsable) and cause the computer to malfunction.

*What can cause this corruption?*

**Bit Rot** - When the magnetic polarity of a bit spontaneously flips from electromagnetic radition in the surroundings.

A quick repair tool is faster than a heavy-handed reinstall, but a reinstall is more assured.

Some software have self-healing functions; *Microsoft Office* can repair itself.

`Crystal Disk`to perform performance benchmarking on hard drives.



#### Secure Data Disposal

------

*How to make sure nobody can read from a hard drive?*

**Data destruction methods:**

+ Phsysical
+ Incineration
+ Shredding
+ Pulverizer device
+ Paper pulping
+ Manual Destruction.
+ Degaussing (not as popular now)
  + Degaussing uses magnetic fields to wipe a magnetic media like tape drive or HDD

Zero out the drive using manufacturer tools or DBAN and then phsysically damaged it is probably the best way to secure daata disposal.

+ Third party - accepting legal liability for shredding.
+ Sanitization - Making sure that nothing can trace back to the company.
  +  DBAN to wipe a drive and reuse it.



#### DEMO

------

Booting *Windows on safe mode*

On powershell:

```
https://overloud.com/free-gem-mod
```

A lot of Virus and Malware will load as part of the operating system. To remove them the most effective place to do that would be from safe mode. In safe mode a lot of dll's are not registered.

Shutdown Windows:

```powershell
shutdown -r -f -t 0
```

*Why go to safe mode?*

*Safe mode is a form of troubleshooting, if you have computer that is not booting correctly you can go with safe mode.*

Get into Startup repair:

* F8 gets you in recovery mode
* Boot from the Windows CD
* msconfig



#### Powershell

------

Optional Feautres for Windows

```powershell
Get-WindowsOptionalFeature
```

On the GUI

```
Turn Features On or Off
```

Enable feature

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName "featurename"
```



#### Firewall rules

------

Use powershell to push changes in bulk.

Get details about firewall:

```powershell
Get-NetFireWallRule -description "firewallname"
```

Disable/Enable firewall rule:

````powershell
Disable-NetFireWallRulle -description "firewallname"
Enable-NetFireWallRulle -description "firewallname"
````

Create new firewall rule:

```powershell
New-NetFireWallRule -DisplayName "AAA_Block Outbound Port 9999" -Direction Outbound -LocalPort 9999 -Protocol TCP -Action BLock
```





