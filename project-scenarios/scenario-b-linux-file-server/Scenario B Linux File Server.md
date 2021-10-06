## Scenario B: Linux File Server

------

### OS

------

*[Flyhomes](https://www.flyhomes.com/) wants to host its own Linux-based file server to store sensitive information. The server must only be accessible to the executive team, who are non-technical Windows 10 users.*

Windows 10 systems:

[Gmail](https://mail.google.com/mail/u/0/) accounts associated with locally-installed [Mozilla Thunderbird](https://www.thunderbird.net/en-US/) clients:

Download and Install [Mozilla Thunderbird](https://www.thunderbird.net/en-US/) desktop clients in the Windows 10 VM's:

![Screenshot 2021-10-06 at 13.05.13](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 13.05.13.png)

To configure a **Gmail** account enter account, password and name and if auto-configure fails enter the following settings:

+ Incoming Server Hostname: imap.gmail.com
+ Port: **993**
+ SSL: **SSL/TLS**
+ Authentication: Normal Password
+ Outgoing Server Hostname: smtp.gmail.com
+ Port: **465**
+ SSL: **SSL/TLS**
+ Authentication: Normal Password

Create a VM running Ubuntu Server:

![Screenshot 2021-10-06 at 14.08.32](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 14.08.32.png)

Setup a Samba file server on the Ubuntu machine:

```
sudo apt update
sudo apt install samba
```

Create a new directory to share:

![Screenshot 2021-10-06 at 15.49.42](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 15.49.42.png)

Configure Samba via the configuration file:

`sudo vim /etc/samba/smb.conf`

Adding these lines at the end:

![Screenshot 2021-10-06 at 16.03.28](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 16.03.28.png)

Restart Samba:

`sudo service smbd restart`

Update firewall rules to allow Samba traffic:

`sudo ufw allow samba`

Setup a Samba password for the current user:

`sudo smbpasswd -a <username>`

On the windows VM map a new drive to the newly created server folder:

![Screenshot 2021-10-06 at 17.38.54](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 17.38.54.png)

Altenativly use the GUI to map the drive using the same IP, name and password by left clicking `This PC -> Map network drive`:

![Screenshot 2021-10-06 at 17.40.19](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 17.40.19.png)

Creating a Microsoft Windows Server 2016 Base with Containers instance in AWS EC2:

+ Login in the Amazon EC2 console
+ Choose **Launch Instance**
+ Select the **Amazon Machine Image (AMI)**:
  +  ![Screenshot 2021-10-06 at 18.02.09](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 18.02.09.png)
+ Choose and Instance Type (for prototyping purposes go witth *free tier eligible*)
+ Configure Intance details
+ Add storage
+ Add tags
+ Configure Security Groups: you can create a security group to enable RDP connections from specific IP's. If you want to have SSH connection you must add a rule that allows it or you can create a new security group that allows SSH:
  + **Type:** SSH
  + **Protocol:** TCP
  + **Port Range:** 22
  + **Source:** Anywhere 0.0.0.0/0
+ Review and Launch.

To allow RDP access via GUI, admins can use the **Remote Desktop Connection** application in win10 after configuring their IP's in the EC2 instances security groups.

### Data

------

Use a third party backup software like **[VEEAM](https://www.veeam.com/backup-replication-virtual-physical-cloud.html?st=adwordspaidsearch&utm_source=google&utm_medium=cpc&utm_campaign=01BR-VAS_SEMEA_EN_IBE_Paid-Search_Trial_Branded-General&utm_content=cid|162455415_ntw|g_adgr|81735547617_creative|396631306231_ext|_adposition|_locph|1011721_dev|c_devm|_placement|_gclid|CjwKCAjwzOqKBhAWEiwArQGwaOI_J94n2FJ_uN2xc-4N52tMfhN6NbRGbQnzOA8O8b_KRF0JwPeQJBoCwXsQAvD_BwE_keyword|veam_matchtype|e_trgt|&gclid=CjwKCAjwzOqKBhAWEiwArQGwaOI_J94n2FJ_uN2xc-4N52tMfhN6NbRGbQnzOA8O8b_KRF0JwPeQJBoCwXsQAvD_BwE)**. Alternatively use windows built in **Backup and Restore** application.

![Screenshot 2021-10-06 at 18.38.29](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 18.38.29.png)

Select `Let me choose`to configure the backup:

![Screenshot 2021-10-06 at 18.41.55](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 18.41.55.png)

Select `backup settings`and `schedule`accordingly:

![Screenshot 2021-10-06 at 18.44.13](/Users/baphomet/codefellows/learning/Ops-201/project-scenarios/scenario-b-linux-file-server/screenshots/Screenshot 2021-10-06 at 18.44.13.png)

Note that this solution doesn't scale very well, you should go with backup jobs in VEEAM to suite a large company.



### Connectivity

------

To enable GUI-based connectivity to Windows10:

Via powershell:

+ Change fDenyTSConnections value to **0**:

  + ```
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
    ```

+ Add rules to the Firewall:

  + ```
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
    ```

To remote into the WIndows10 machines executives must:

+ Click the Start button, open the Accessories folder, and select the shortcut for Remote Desktop Connection.
+ At the RDC window, type the name or IP address of the remote PC (provided by you) in the Computer field.
+ Click the Show Options button, and type the username of the account.