## Lab 05

#### Part 1: Restoring the Desktop

------

Download and import the VM's into VirtualBox and place them in to NAT Network configuration:

![Screenshot 2021-10-04 at 12.43.53](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2012.43.53.png)

![Screenshot 2021-10-04 at 13.27.25](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2013.27.25.png)

![Screenshot 2021-10-04 at 14.15.38](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2014.15.38.png)

![Screenshot 2021-10-04 at 13.27.11](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2013.27.11.png)

#### Part 1: Restoring the Desktop

------

Black screen possibly caused by something stopping `explorer` process, so we can bring up `task manager`with `ctl + alt + del`check if that's the case and bring up `explorer again`by creating a new task:

![Screenshot 2021-10-04 at 12.58.06](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2012.58.06.png)

![Screenshot 2021-10-04 at 12.59.56](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2012.59.56.png)

![Screenshot 2021-10-04 at 13.00.33](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2013.00.33.png)

Since this behaviour happens on logon we opened `Task Scheduler`and two suspicious tasks that execute a program were found. Proceed to delete those tasks for both users and the respective malicious `.bat`files:

![Screenshot 2021-10-04 at 13.14.05](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2013.14.05.png)

#### Part 2: General System Maintenance

------

**System FIle Checker** scans the integrity and restores missing or corrupted system files with working replacements. `sfc /scannow`:

![Screenshot 2021-10-04 at 13.43.44](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2013.43.44.png)

**Check Disk** analyse hard drive errors and run repairs automatically. `CHKDSK C:`

![Screenshot 2021-10-04 at 14.02.37](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2014.02.37.png)

**Gpupdate** is used to force the update of group policies. Group Policies are used to change security settings and for system management `gpupdate /force`:

![Screenshot 2021-10-04 at 14.09.29](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2014.09.29.png)

#### Part 3: Mounting a Network Drive

------

Using `net use` to map a network drive to a shared folder:

![Screenshot 2021-10-04 at 14.53.09](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2005/Screenshot%202021-10-04%20at%2014.53.09.png)
