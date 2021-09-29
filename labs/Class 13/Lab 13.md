## Lab 13

### Process Exploring

------

#### Process Explorer

------

Logged into the `admin`account, all the tools are installed and ready to go:

![Screenshot 2021-09-28 at 18.24.24](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-28%20at%2018.24.24.png)

Bringing up **Process Explorer** we identified 3 processes taking up too much CPU time, **wscript.exe**. This process belongs to Microsfot Windows Operating System, however threat actors can write difffernt types of malicious programs and name them `wscript.exe` and one tell is indeed the fact that wscript.exe file is taking too much CPU memory alongside performance reported to be very low.

![Screenshot 2021-09-29 at 11.54.46](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2011.54.46.png)

After checking the location of these process with can tell that they are under the ` C:\Windows\System32`, so they are where they are suposed to be. Let's kill them and reboot the system to see if they start again, spoiler alert they did start again.That means a script is running at startup.

![Screenshot 2021-09-29 at 12.02.07](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2012.02.07.png)

So opened task scheduler to see what tasks were set to run at startup, presto manifesto, some strange activity there. So time to stop it and browse to delete those files.

![Screenshot 2021-09-29 at 13.01.58](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.01.58.png)

After deleting these tasks as respective source files I also check the downloads folder of the user who reported this issues since he said he was browsing the internet when the strange behaviour happend, and found out a `coinminer`folder containing the malicious script.

![](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.09.50.png)

After rebooting those rogue processes were gone.

![Screenshot 2021-09-29 at 13.14.54](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.14.54.png)

#### Disk Consumption

------

Upon inspection using **WinDirStat** it's evident that `supercrypt`folder and its file is consument way to much disk space and those are not fundamental files to the OS.

![Screenshot 2021-09-29 at 11.27.04](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2011.27.04.png)

After deleting those I also proceed to delet the users `WebCache`folder.

![Screenshot 2021-09-29 at 13.25.33](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.25.33.png)

We're not done yet, upon further inspection another `buycrypt`folder under `C:\Program Files\`needs also to be deleterd.

![Screenshot 2021-09-29 at 13.26.43](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.26.43.png)

#### Secure Configuration

------

In this system, Windows Defender was out of date and firewalls were disabled, we need to update software and enable security features.

![Screenshot 2021-09-29 at 12.33.42](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2012.33.42.png)

We proceed to update and enable firewall followed by a system scan.

![Screenshot 2021-09-29 at 13.50.47](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2013/Screenshot%202021-09-29%20at%2013.50.47.png)

#### Reporting

------

Incorrect behaviour from the user part caused it to download scripts that ran at windows startup consuming CPU time.

Windows Defender and Windows Firewall were enabled and update. The tools used were very usefull in diagnosing and identifying the malicious files.

This was possibly **cryptojacking**, the code was running on the background while the user used the computer normally until he noticed lack of performance and lags in execution.
