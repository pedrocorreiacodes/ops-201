## Scenario A: Sales Computer

------

### OS

------

**Sales division** wants to standardize its virtual desktops to Windows 10 Pro.

Since Outlook is included with Microsoft Office 365 sign-up at `store.office.com`for a free one month trial subscription for `Microsoft 365`, to download the following:

+ Microsoft Outlook Desktop Mail Client.
+ Microsoft OneDrive agent.

Synchronize 365 email accounts to the Outlook client:

+ Open Outlook.
+ At the Welcome screen, click **Next**.
+ When asked if you want to set up Outlook to connect to an email account, select **Yes** and then click **Next**.
+ Enter your name, your email address.

You can configure your email by using IMAP. However, if you use IMAP you can only access your email from Outlook, not your calendar, contacts, and tasks.

To **Set up OneDrive** simply open the application from the start menu since is automatically available and ready to use in Windows 10, and enter the email address you want to syncronize it with.

![Screenshot 2021-10-04 at 18.29.11](https://github.com/pedrocorreiacodes/Ops-201/blob/master/project-scenarios/scenario-a-sales-computer/screenshots/Screenshot%202021-10-04%20at%2018.29.11.png)

![Screenshot 2021-10-04 at 18.32.17](https://github.com/pedrocorreiacodes/Ops-201/blob/master/project-scenarios/scenario-a-sales-computer/screenshots/Screenshot%202021-10-04%20at%2018.32.17.png)

**Qumolo Engineers** requirements.

+ Ubuntu Linux Desktop 20.10.
+ VS Code installed.
+ Mozilla Thunderbird to connect to their Microsoft 365 email accounts.

You can run the simple `install.sh`script (located on this folder).

### Data

------

Use a third party backup software like **[VEEAM](https://www.veeam.com/backup-replication-virtual-physical-cloud.html?st=adwordspaidsearch&utm_source=google&utm_medium=cpc&utm_campaign=01BR-VAS_SEMEA_EN_IBE_Paid-Search_Trial_Branded-General&utm_content=cid|162455415_ntw|g_adgr|81735547617_creative|396631306231_ext|_adposition|_locph|1011721_dev|c_devm|_placement|_gclid|CjwKCAjwzOqKBhAWEiwArQGwaOI_J94n2FJ_uN2xc-4N52tMfhN6NbRGbQnzOA8O8b_KRF0JwPeQJBoCwXsQAvD_BwE_keyword|veam_matchtype|e_trgt|&gclid=CjwKCAjwzOqKBhAWEiwArQGwaOI_J94n2FJ_uN2xc-4N52tMfhN6NbRGbQnzOA8O8b_KRF0JwPeQJBoCwXsQAvD_BwE)**. Alternatively use windows built in backup application.

Create a disk partion to store the backups.

![Screenshot 2021-10-04 at 18.49.23](https://github.com/pedrocorreiacodes/Ops-201/blob/master/project-scenarios/scenario-a-sales-computer/screenshots/Screenshot%202021-10-04%20at%2018.49.23.png)

Setup backup to the recent created drive:

![Screenshot 2021-10-04 at 18.56.07](https://github.com/pedrocorreiacodes/Ops-201/blob/master/project-scenarios/scenario-a-sales-computer/screenshots/Screenshot%202021-10-04%20at%2018.56.07.png)

Select how often do you want to back up:

![Screenshot 2021-10-04 at 18.58.29](https://github.com/pedrocorreiacodes/Ops-201/blob/master/project-scenarios/scenario-a-sales-computer/screenshots/Screenshot%202021-10-04%20at%2018.58.29.png)

Note that this solution doesn't scale very well, you should go with backup jobs in VEEAM to suite a large company.



### Connectivity

------

For the sales rep to remote from home to this computer via GUI, you should enable RDP.

To do this via powershell:

+ Change fDenyTSConnections value to **0**:

  + ```
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
    ```

+ Add rules to the Firewall:

  + ```
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
    ```

While in the home computer, sales rep must:

+ Click the Start button, open the Accessories folder, and select the shortcut for Remote Desktop Connection.
+ At the RDC window, type the name or IP address of the remote PC (provided by you) in the Computer field.
+  Click the Show Options button, and type the username of the account.

