## Lab 06

### Part 1: Windows Defender Firewall

------

To change firewall rules we have to bring up `Windows Defender Firewall` and in `Avanced Security` change the `Outbound Rules`: `New Rule`, select `Program` and specify the program's path.

![Screenshot 2021-10-01 at 17.33.43](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 06/Screenshot 2021-10-01 at 17.33.43.png)

![Firewall](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 06/Firewall.png)

### Part 2: Microsoft Defender

------

Atempt to download the `EICAR anti-malware test file`:

![Anti-malware test](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 06/Anti-malware test.png)

Windows Defender detected the file as insecure and stopped the download.

Performing a `Quick Scan`in `Microsoft Defender`:

![Quick Scan](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 06/Quick Scan.png)

### Part 3: Task Manager

------

Opening `Task Manager`and sorting processes by most RAM consumed:

![Processes consuming most Ram](/Users/baphomet/codefellows/learning/Ops-201/screenshots/Lab 06/Processes consuming most Ram.png)

When you end `Windows Exxplorer`task the whole desktop turns black, and when you restart it everything comes back up. Windows Explorer is the file manager used by Windows and has features such as playing audio and videos and launching programs. The desktop and the taskbar are also responsability of Windows Explorer, so naturally it's one of the processes that consumes more memory.