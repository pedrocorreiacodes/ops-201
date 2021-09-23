## Lab: Class 11

### Part 1: Staging

------

Download ops201-class11.ova and import it into VirtualBox.

![Screenshot 2021-09-23 at 16.57.37](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2016.57.37.png)

Create a clone of a Windows 10 starter VM.

![Screenshot 2021-09-23 at 17.17.44](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2017.17.44.png)

Download Windows 10 .iso file.

![Screenshot 2021-09-23 at 17.20.01](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2017.20.01.png)

Download Darik’s Boot and Nuke (DBAN) ISO file.

![Screenshot 2021-09-23 at 17.21.57](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2017.21.57.png)

#### Part 2: Data Restoration

------

Recover Samantha’s deleted files:

Bring up EaseUS Data Recovery

![Screenshot 2021-09-23 at 18.34.38](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2018.34.38.png)

Specifying *Desktop* as location and searching for *.xls* files:

![Screenshot 2021-09-23 at 18.55.45](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2018.55.45.png)

Recovering files:

![Screenshot 2021-09-23 at 19.01.52](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.01.52.png)

Files open on *LibreOffice*:

![Screenshot 2021-09-23 at 19.06.49](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.06.49.png)

It was extremely easy to perform this operatio with a free software that anyone can download an operate. It's extremely important to dispose of data the right way to avoid security issues.

### Part 3: Data Corruption Repair

------

First we need to boot into Windows 10 ISO file:

![Screenshot 2021-09-23 at 19.14.44](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.14.44.png)

Select *repair your computer* and *troubleshoot* to bring up the command prompt and then type `bootrec /fixmbr`to perform a master boot record repair:

![Screenshot 2021-09-23 at 19.21.43](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.21.43.png)

![Screenshot 2021-09-23 at 19.23.26](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.23.26.png)

After booting into Windows 10 we logged in to admin opened the command line as admin and typed the following commands:

`chkdsk`to analyse hard drive errors and repairs:

![Screenshot 2021-09-23 at 19.27.39](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.27.39.png)

![Screenshot 2021-09-23 at 19.28.13](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.28.13.png)

`sfc /scannow` to scan all protected system files and replace them with a copy.

![Screenshot 2021-09-23 at 19.33.32](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-09-23 at 19.33.32.png)

Finanlly we run the command `dism /online /cleanup-image /restorehealth` to restore potential issues within the windows. The `/online` flag refers to the OS currently running on the machine.

![Screenshot 2021-09-23 at 19.44.51](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2019.44.51.png)

### Part 4: Secure Data Disposal

------

Booting Windows 10 VM clone into Darik’s Boot and Nuke (DBAN) ISO file:

![Screenshot 2021-09-23 at 20.06.46](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2020.06.46.png)

In this menu we type `Enter` to start DBAN into interactive mode and then `M`for wipe method choice so select `Quick Erase`:

![Screenshot 2021-09-23 at 20.10.17](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2020.10.17.png)

Pressing `space`to select the drive to erase and then `F10`to begin the Quick Erase:

![Screenshot 2021-09-23 at 20.11.22](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2020.11.22.png)

Successful DBAN operation:

![Screenshot 2021-09-23 at 20.14.39](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2020.14.39.png)

Rebooting the machine after ejecting virtual DBAN disc:

![Screenshot 2021-09-23 at 20.17.33](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2011/Screenshot%202021-09-23%20at%2020.17.33.png)
