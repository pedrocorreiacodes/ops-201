## Lab: Class 08

![Screenshot 2021-09-14 at 19.58.11](/Users/baphomet/codefellows/learning/Ops-201/Screenshots/Screenshot 2021-09-14 at 19.58.11.png)

Open `Task Scheduler`.

Create a task to run every day at 00:00. That task must execute the newly created *.bat* file.

![Screenshot 2021-09-14 at 19.58.11](/Users/baphomet/codefellows/learning/Ops-201/Screenshots/Screenshot 2021-09-14 at 20.03.24.png)

*.bat* file must contain the following:

```bat
@echo off

robocopy "C:\users\j.thompson\Desktop\My Project Files" E:\ 
```

