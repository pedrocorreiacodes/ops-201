## Class 09

### SOP

------

### Readings: Workstation Deployment SOP

------

##### What is a SOP?

SOP stands for **standad operating procedure**, a procedure specific for a company or organization that describes the steps and activities necessary to complete a particular task.

According to *So, You Want to Write an SOP? by Doug Tedder* documentation should be in bite-sized chunks with each document having a clear purpose.

SOPs are a primary way to implement or enforce a policy, policies without SOPs are not actionable.

Writing SOPs can be challenging because there are no hard rules for writing them. A particular format may work well on an organization and not so well in another organization.

SOPs require to be regularly maintained. If SOPs don't keep up with the fast changing business and IT they will become obsolete.

According to *So, You Want to Write an SOP? by Doug Tedder*  there is no right or wrong way to write an SOP, but there are several things that one must consider when writing an SOP. SOPs must be:

- **Readable.** This means legible font sizes, numbered pages, titles, numbered paragraph headings, and effective use of whitespace.
- **Consumable.** Using a template or predefined format makes the content easy to read.
- **Understandable.** To be effective, SOPs must be focused and to the point, using relevant, but simple terms.
- **Actionable.** SOPs must clearly and succinctly describe what is to be done.
- **Measurable.** The activities describecd d within an SOP must be specific and measurable.

Sops must be created with a plan in mind. Must be concise and readable with sufficient depth without being overwhelming. Keep it on the general range of five to seven steps

Every SOP must open with a overview paragraph that briefly describes the topic of the SOP, inputs, output, expected results, and involved roles.

*Doug Tedder* follows five guiding principles when writing a SOP:

- **Keep it simple.** The SOP should augment and reinforce training; it is not a substitute for training.
- **SOPs must be portable.** Even if an underpinning application or tool is changed, the “what, when, and why” generally will not.
- **Flowcharts and diagrams tell a story.** Having a flowchart or diagrams (as appropriate) is a great way to quickly communicate what activities are addressed within the SOP.
- **Consistency counts.** Develop and use a consistent format or template to help make the SOP consumable.
- **It’s about the audience.** If the SOP does not work for your audience, your SOP doesn’t work. Conduct regular periodic reviews of SOPs with the people that use them to identify and incorporate improvements.



### Review

------

**System Log:** Core operating system and hardware values, for example a power shut down.

**Security Log:** Authentication or accessing a file. Audit success and audit failures.

**Application Log:** Events logged by aplications or programs.

**Windows Error Types**

+ Error
+ Warning
+ Information
+ Sucess Audit
+ Failure Audit

**Windows Registry** is a local database storing critical configuration for various parts of the computer. Window references the Registry for many aspects of the OS behaviour, thus making Registry an attractive target for cyber attacks seeking to alter computer behaviour.



### Email

------

Corporations rely on effective reliable and secure email transfer for all of their business.

*Why do we need to practise email service and client setup?*

A lot of sys admins send passwords over email. The *bad guys* are looking for *password *.

*Difference between fishing and spear fishing attack?*

The difference between them is primarily a matter of targeting. Phishing emails are sent to very large numbers of recipients, more or less at random, with the expectation that only a small percentage will respond. ... Spear phishing emails **are carefully designed to get a single recipient to respond**

*Vulnerability that's not known and there's no patch for is a **Zero Day vulnerability***

**Popular email clients**

+ Outlook
+ Gmail
+ 365

*Security analyst job begins job starts with the secure points on a network and email is one of them.*

**Email** can be defined as a method of exchanging messages between persons via electronic devices.

+ Email delievery has different protocols. Typically there's a *client-server* architecture involved.
  + Microsoft exchange is the server and Outlook is the client. The server is a target for attackers.
+ **All SMTP relays should be protected.** Heavily used by attackers.

+ **SaaS** - Software as a service. A cloud service.



### Email Protocols

------

Email uses protocols to comunicate data.

+ **Webmail** is an email service accessible via web browser.
+ **POP3 (Post Office Protocol 3)** is an inbound configuration that will deliver messages to your client then delete them off the mail server immediately. Messages can be read offline.
  + Default POP Port number: 100
  + POP3 por number with SSL/TLS: 995
+ **IMAP (Internet Message Access Protocol)** is an inbound configuration that will allow you to manage a mailbox from multiple devices and synchronize with the mail server, which keeps a copy of all received emails.
+ Default IMAP port number: 143.
+ IMAP over SSL (**IMAPS?**): port number: 993.
+ **MAPI** is the protocol used by Microsoft Exchange Servers that communitcate with their clients, Microsoft Outlook.
+ Uses RPC encryption (**Remote Procedure Call**): Can be used to find ports to work on. Can use dynamic port mapping.

What file extensions do emails use?

+ .emt
+ .emlx
+ .msg (Windows)

How is the use of email monitored to prevent abuse?

+ Law enforcement
  + Black list email senders: Known malicious spammers and senders.
  + Controlling *attachments* 
+ Corporate policy, monitoring, and systems administration.
+ Domain reputation MX Toolbox domains email blacklist.



### Demo

------

##### Event logs on powershell

Every log file on sytem log:

```powershell
get-eventlog -logname system
```

Newest 10:

```powershell
get-eventlog -logname newest 10
```

Storing log on a variable:

```powershell
$SystemTop10=get-eventlog - logname system -newest 10
```

Since Powershell is an object oriented language we can check the block of properties for each saved line o code:

```powershell
$SystemTop10 | select *
```

Selecting different properties and exporting the log in a `csv`file and text file:

```powershell
$SystemTop10 | select Eventid,source,timewritten | export-csv -notype C:\Logs.csv
$SystemTop10 | select Eventid,source,timewritten | ou
```

Return all logs entries for the `admin`account:

```powershell
get-eventlog -logname system *message *admin*
```

get syntax for the command:

```powershell
help get-eventlog
```

get remote logs:

```powershell
get-eventlog -computername <hostname> -newest
```

get security logs by id:

```powershell
get-eventlog security -instanceID <instanceNumber>
```

get security event logs by event id and storing them in a variable:

```powershell
$securityReturn=get-evenlog -logname security | where-object {$_.eventid -eq 4625}
```

get processes run by *Microsoft Corporation*

```powershell
get-process | where-object {$_.company -eq "Microsoft Corporation"}
```

