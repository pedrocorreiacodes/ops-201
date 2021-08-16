## Class 01

### Hot & Cold Sites

------

Off-site backup strategies:

+ A **hot site** is ready at a moment's notice to take over for the failed production site and is the most expensive option. Is not as common and greatly reduced. (Iron Mountain).
+ **Cold sites** take a long time to spin up but are less costly than hot sites. Is bad if you're using a cold site. Something went really wrong. Typically used for small companies on a smaller scale.
+ **Warm sites** take some time to spin up but not as long as cold sites and have middling costs to maintain.



### System Redundancy

------

Key Concepts:

+ A **cluster** is a set of servers that work together to deliver the same service. Each have their own IP address, they're indepedent of each other. If a **node** spots pinging each server wants to take it's place. You can have virtual clusters and hardware clusters.
+ **High-availability** is achieve when redundancy is implemented in case the first server goes down.
+ **Failover** occurs when the primary servers fails over to the backup server.



### VirtualBox Snapshots

------

VirtualBox allows us to host a computer at the OS level.

Sometime companies use virtualization snapshots as a way to temporally backup the computers at that company if they're are testing out a patch or some kind of lage software deployment. Snaphots of the servers to rollback.

HyperV and VMware are common for physical virtualization in larger companies.

*Take snapshots before you perform work*.

**Snapshots** save the VM in an exact state, allowing you to experiment freely and restore back to that state anytime.

Fully saves 100% of the VM (complete point and time image) unlinke **System Restore** (only saves the bare minimum require files to get the computer running, does not save data and applications for example).



### System Restore

------

Specifically for *windows* stack.

Client data is sacred! So prepare for the worst, hope for the best.

**System Restore** is a Windows tool that lets us revert system changes to a previous point in time (a restore point) just cares about about OS system files. Just cares about keeping the computer up and running.

Comparable tools in other systems:

+ Timeshift for Linux
+ Time Machine for macOS

![Screenshot 2021-08-13 at 14.01.51](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-08-13 at 14.01.51.png)

![Screenshot 2021-08-13 at 14.03.18](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-08-13 at 14.03.18.png)

![Screenshot 2021-08-13 at 14.05.05](/Users/baphomet/Library/Application Support/typora-user-images/Screenshot 2021-08-13 at 14.05.05.png)

Be specific when naming a *restore point*.

It's not common for enterprise level system restores, but it's good to know for some servers or desktop level.



**Readings: How to Use System Restore in Windows**

------

Windows System Restore is a tool to revert to a previous software, registry, and driver configuration called a **restore point**.

**Restore-points** don't usually need to be created manually. Windows, as well as other programs, should regulaly create restore points at critical junctures-

It wil not in any way affect the non-system files. Just cares about about OS system files.

It is a great tool to use early in the troubleshooting process. It's not common for enterprise level system restores, but it's good to know for some small servers or desktop restores.