## Ops Challenge: Class 08

![Screenshot 2021-09-14 at 19.58.11](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2008/Screenshot%202021-09-14%20at%2019.58.11.png?raw=true)

Open `Task Scheduler`.

Create a task to run every day at 00:00. That task must execute the newly created *.bat* file.

![Screenshot 2021-09-14 at 19.58.11](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2008/Screenshot%202021-09-14%20at%2020.03.24.png?raw=true)

*.bat* file must contain the following:

```bat
@echo off

robocopy "C:\users\j.thompson\Desktop\My Project Files" E:\ 
```

