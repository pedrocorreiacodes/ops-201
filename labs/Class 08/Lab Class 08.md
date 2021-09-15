## Lab: Class 08

### Part 1: Registry

#### Where Windows saves its registry files

------

![Screenshot 2021-09-15 at 11.43.41](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 11.43.41.png)

Registry files are stored in `C:\Windows\System32\config`.



####  Export a backup registry file from Registry Editor

------

![Screenshot 2021-09-15 at 11.46.43](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 11.46.43.png)



#### Restore the registry from backup.

------

![Screenshot 2021-09-15 at 11.48.40](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 11.48.40.png)

![Screenshot 2021-09-15 at 11.49.04](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 11.49.04.png)



#### Switch windows with a single click on the taskbar

------

![Screenshot 2021-09-15 at 11.58.13](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-15 at 11.58.13.png)

With this registry change clicking a taskbar button always opens the last active window, If you’re routinely switching between apps with open windows this will save you time.



#### Add apps to the desktop context menu

------

![Screenshot 2021-09-15 at 12.05.17](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 12.05.17.png)

Allows you to really quick access to launch a frequently used application.



#### Show seconds in the Taskbar Clock

------

![Screenshot 2021-09-15 at 12.39.10](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 12.39.10.png)

When you want access to precise time.



#### Remove 3D Objects (and Other Folders) 

------

![Screenshot 2021-09-15 at 13.02.42](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 13.02.42.png)

Not everyone will work with  “3D Objects”, so this can clog your workspace.



#### Hide OneDrive from File Explorer

------

![Screenshot 2021-09-15 at 13.11.11](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 13.11.11.png)

If you don't use OneDrive you don't need to see the “OneDrive” option in File Explorer’s sidebar.



#### Remove lock screen overlay

------

![Screenshot 2021-09-15 at 13.22.08](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-15 at 13.22.08.png)

If you’re using a desktop PC or laptop, the lock screen is just another screen you have to press Space to bypass before typing your password. If you're looking for convinience when logging in you must try this.



#### Remove Bing Search fromm the start menu

------

![Screenshot 2021-09-15 at 13.35.01](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 13.35.01.png)

Because users don't want to search and use Bing everytime.



#### Remove Cortana taskbar tool

------

![Screenshot 2021-09-15 at 13.40.53](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 13.40.53.png)

Users might not want to use Cortana so there should be a option to remove it from the taskbar tool.



#### Disable “shake to minimize”

------

![Screenshot 2021-09-15 at 13.46.07](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 13.46.07.png)

To prevent accidentally triggering this feature by "shaking" a window.



#### Use Windows Photo Viewer instead of the Photos app

------

![Screenshot 2021-09-15 at 14.01.18](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 14.01.18.png)

To use an app that performs better or to allow the user to use a more familiar app to open photos.



### Part 2: System Crash Analysis

####  Blue screen of death (BSOD)

------

##### INVALID_DATA_ACCESS_TRAP (Error Code 0x00000004)

![Screenshot 2021-09-15 at 14.32.48](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 14.32.48.png)

- Stop code: 0x00000004.
- What part of the computer caused the error: Corrupted device drivers, corruption in the Windows registry, driver conflict, broken hard disk, RAM corruption, etc.
- Identify the memory address: 0x521FCCF0.
- What does this error seem to indicate: Something went wrong when installing new software or hardware.



##### NMI_HARDWARE_FAILURE (Error Code 0x00000080)

![Screenshot 2021-09-15 at 14.44.30](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 14.44.30.png)

- Stop code: 0x80.
- What part of the computer caused the error: Driver error or memory error.
- What does this error seem to indicate: Update or try the generic drivers given by Windows 10 itself.



##### NTFS_FILE_SYSTEM (Error Code 0x00000024)

![Screenshot 2021-09-15 at 14.50.36](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 14.50.36.png)

- Stop code: 0x00000024.
- What part of the computer caused the error: Hard drive.
- What does this error seem to indicate: Hard drive curruption.



##### THREAD_STUCK_IN_DEVICE_DRIVER (Error Code 0x000000EA)

![Screenshot 2021-09-15 at 15.00.44](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.00.44.png)

- Stop code :0x000000EA.
- What part of the computer caused the error: Video card.
- What does this error seem to indicate: Video card driver problem or rarely a video card. 



##### MEMORY_MANAGEMENT (Error Code 0x0000001A)

![Screenshot 2021-09-15 at 15.02.40](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.02.40.png)

- Stop code :0x0000001A.
- What part of the computer caused the error: Possibly RAM memory.
- What does this error seem to indicate: Check and replace your components.

##### Error codes 

------

- Error message: “This device cannot start. (Code 10)”: Device manager cannot start a device. Possibly outdated drivers.

- Error 0xC004C003: Windows version might be currupted.

- Error 0x80070070: No enough space to install an upgrade.

- Error 0x80200056: Device restarted when performing a Windows upgrade.

- Error message “WU_E_NO_SERVICE”: Windows Update Agent is unable to provide the upgrade service.

  

### Part 3: System Log Analysis

------

![Screenshot 2021-09-15 at 15.27.13](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.27.13.png)

This **Critical** event happened because the system did not shut down properly.

![Screenshot 2021-09-15 at 15.30.56](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.30.56.png)

This **Error** event happened when Service Control Manager was terminated because o a system shutdown.

![Screenshot 2021-09-15 at 15.36.10](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.36.10.png)

**Warning** happend when the configured DNS servers didn't respond for the *wpad* name resolution.

![Screenshot 2021-09-15 at 15.38.03](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.38.03.png)

**Information** showing the `DHCPv6` service stopped.

![Screenshot 2021-09-15 at 15.42.48](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.42.48.png)

**Information** event, showing a **Audit Success** of a successfull account login.



##### Exporting system logs

------

![Screenshot 2021-09-15 at 15.46.07](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 08/Screenshot 2021-09-15 at 15.46.07.png)

FIltering by event number allows us to correlate different events, for example to check errors thrown by the same event.

Filtering with timestamps allows us to check a specifc time or time range where unusual or unwanted activity took place allowing us to pinpoint the cause.

+ Application:  Information on installed programs.
+ Security: Logs regarding user activity and security such as logins and login attempts.
+ Setup: System setup. When the system is shut down or when it boots.
+ System: Updates and Instalation.
+ Hardware Events: Related to system hardware.
+ Internet Explorer: Logs about Internet Explorer.
+ Key management Service: Software license activation.
+ Microsoft: Logs operating system activity.
+ Microsoft Office Alerts: Microsoft office applications.
+ OpenSSH: Logs about ssh connection.
+ Windows PowerShell: Logs about Windows PowerShell operations.

