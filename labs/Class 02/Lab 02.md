## Lab 02

### Part 1: Deploy Ubuntu Server 20.10

------

Download server image:

![Screenshot 2021-10-01 at 11.18.00](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2011.18.00.png)

Creating a VM, booting into the image:

![Screenshot 2021-10-01 at 11.44.42](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2011.44.42.png)

After installing and login, run `sudo apt update`to update the package manager:

![Screenshot 2021-10-01 at 13.45.22](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.45.22.png)

Check if the SSH service is running with `sudo systemctl status ssh`:

![Screenshot 2021-10-01 at 13.47.57](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.47.57.png)

Update firewall rules to access ssh connections with `sudo uff allow ssh`:

![Screenshot 2021-10-01 at 13.48.31](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.48.31.png)

Connecting via SSH from my personal computer with `ssh <username>@<ipaddress>`:

![Screenshot 2021-10-01 at 13.53.01](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.53.01.png)

### Part 2: Installing and Using Git

------

Install git with `sudo apt install git`. Check runnign version with `git --version`:

![Screenshot 2021-10-01 at 13.55.22](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.55.22.png)

![Screenshot 2021-10-01 at 13.58.26](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2013.58.26.png)

![Screenshot 2021-10-01 at 14.01.09](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.01.09.png)

![Screenshot 2021-10-01 at 14.02.03](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.02.03.png)

### Part 3: Installing and Using VS Code IDE

------

Install the `Remote - SSH` extension from the VS Code extensions Marketplace

![Screenshot 2021-10-01 at 14.03.27](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.03.27.png)

Connect VS Code to host:

![Screenshot 2021-10-01 at 14.06.15](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.06.15.png)

![Screenshot 2021-10-01 at 14.07.20](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.07.20.png)

Creating an executing a simple script:

![Screenshot 2021-10-01 at 14.09.58](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2002/Screenshot%202021-10-01%20at%2014.09.58.png)
