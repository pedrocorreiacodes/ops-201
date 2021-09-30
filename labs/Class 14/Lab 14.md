## Lab 14

#### Part 1: Your First Cloud VM on AWS Lightsail

------

Account created and verified, time to pick the **instance image**, we went with `Ubuntu 18.04 LTS`:

![Screenshot 2021-09-30 at 15.08.20](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2015.08.20.png)

![Screenshot 2021-09-30 at 15.10.26](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2015.10.26.png)

Testing some operation on the terminal just like you would in every linux based system:

![Screenshot 2021-09-30 at 15.15.57](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2015.15.57.png)

![Screenshot 2021-09-30 at 15.20.43](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2015.20.43.png)

You can access this instance from every computer, this kind of agnostic accessibility let's your access your lab machines from everywhere, that means you're not dependent on any network, physical space or particular machine. You can work from everywhere.

That kind of accessibility leads also to a series of security concerns. Since you can access it from anywhere means that your system is exposed to a series of vulnerabilities.

Creating a static IP address for the instance:

![Screenshot 2021-09-30 at 16.12.27](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2016.12.27.png)

Creating a snapshot of the instance:

![Screenshot 2021-09-30 at 16.20.56](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2016.20.56.png)

Attaching a disk to the instance:

![Screenshot 2021-09-30 at 16.35.42](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2016.35.42.png)

Creating a second VM using the AWS Lightsail Tutorial for Windows Server:

![Screenshot 2021-09-30 at 16.41.07](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2016.41.07.png)

This is virtually identical to a local on-prem computer:

![Screenshot 2021-09-30 at 17.01.10](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2017.01.10.png)

It's very easy and convenient to setup and access cloud based virtual machines in AWS Lightsail, definitely a good option, it's good to keep an eye on the costs, despite being affordable and you're only paying for what you're using it can get out of hand fast. AWS price rates can be confusing.

#### Part 2: AWS EC2

------

Creating a EC2 ` Windows Server 2016` instance:

![Screenshot 2021-09-30 at 17.35.03](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2017.35.03.png)

![Screenshot 2021-09-30 at 17.36.36](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2017.36.36.png)

![Screenshot 2021-09-30 at 17.38.26](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2017.38.26.png)

![Screenshot 2021-09-30 at 17.41.46](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2017.41.46.png)

![Screenshot 2021-09-30 at 18.08.11](https://github.com/pedrocorreiacodes/Ops-201/blob/master/screenshots/Lab%2014/Screenshot%202021-09-30%20at%2018.08.11.png)
