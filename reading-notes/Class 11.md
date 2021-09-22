## Class 11

#### Data Restoration, Startup Repair, and Secure Disposal

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





