## Lab: Class 10

#### Part 1: Veeam Free File Level Backup and Restore

------

Download and install Veeam.

![Screenshot 2021-09-20 at 17.49.37](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-20 at 17.49.37.png)



Performing a file level backup of personal files to the same drive in a different part of it. In a 'real world' scenario the backup should be done into another resource.

![Screenshot 2021-09-21 at 16.01.55](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.01.55.png)

![Screenshot 2021-09-21 at 16.04.02](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.05.22.png)

![Screenshot 2021-09-21 at 16.07.49](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.07.49.png)

 Restoring the deleted files:

![Screenshot 2021-09-21 at 16.09.37](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.09.37.png)

![Screenshot 2021-09-21 at 16.08.58](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.08.58.png)

And the deleted *Test.txt* file is back on the desktop.

![Screenshot 2021-09-21 at 16.11.14](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 16.11.14.png)

System recovery operations are a fundamental skill to have when dealing with computer systems, they'll eventually malfunction and we have to be ready to deal with that. In all cases data backup is a priority, data is sacred, we most prevent data loss and implement data recovery tools anywhere possible.

Veeam setup can be tricky and a little *overkill* out of the box. For teaching purposes is better to install the Veeam agent than the whole suite.

In an increasing scale we'll have to make sure the infrastructure grows accordingly, meaning dedicated servers for backup and users with well configured backup jobs in each account.

 



#### Part 2: **VirtualBox VM Tools - Log System, Clone**

------

Free space on host computer’s hard drive.

![Screenshot 2021-09-21 at 18.08.25](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 18.08.25.png)

Clone of the Windows 10 VM. 

![Screenshot 2021-09-21 at 18.26.55](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 18.26.55.png)

A full clone is an independent copy of a virtual machine that shares nothing with the parent virtual machine after the cloning operation.

A linked clone is a copy of a virtual machine that shares virtual disks with the parent virtual machine in an ongoing manner.

![Screenshot 2021-09-21 at 18.32.55](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 18.32.55.png)

With *Current machine state*, the new machine will have no snaptshots.

With Current machine state, the new machine will reflect the current state of the original machine with all the snapshots.

Cloning.

![Screenshot 2021-09-21 at 18.35.16](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 18.35.16.png)

This feature is usefull to create scenarios with multiple VM's sharing the same initial setup.

Logs for the startup and shutting down of the VM.

![Screenshot 2021-09-21 at 18.55.29](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 18.55.29.png)

![Screenshot 2021-09-21 at 19.04.11](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 10/Screenshot 2021-09-21 at 19.04.11.png)

Generally speaking logs are usefull to maintain a debug a program. With logs we can assert where something went wrong, usually that's the frist step to solve an issue.

The tools are very similar to *Event Viewer* althought *Event Viewer* is more robust and offers more features and the creation and reutilization of custom logs and views.