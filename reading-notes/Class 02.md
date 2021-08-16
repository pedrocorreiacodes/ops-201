## Class 02

### Developer Tools



### Bash

------

**Bourne-Again Shell** Developed by Brian Fox in 1987.

+ **BASH** is the Linux shell, used across all Linux distributions.

+ Shells are basically small logical processors that execute commands. They take your command and translate then to the computer.
+ Texts and sumbols expanded to create larger expressions.
+ Bash scripting allows for the automation of shell commands on Linux OS

The other side of the coin is that attackers use these tools as well.

### SSH

------

![Screenshot 2021-08-13 at 17.49.16](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-08-13 at 17.49.16.png)

**Secure Shell**, the successor to an older technology called telnet. Telnet uses the same port but the transmission was all in clear text.

Offers and encrypted means to establish a shell to a remote system via **TCP port 22**.

Prevents traffic from being sniffed. Provides encryption.

+ Server side requires SSHD service to be running:

  `sudo systemctl status sshd`

+ Client initializes a connection request:

  `ssh [username]@[ipaddress]`

+ Supports the use of key files instead of passwords for superior security and efficiency of authentication.