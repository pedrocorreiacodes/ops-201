## Class 13

### Malware Remediation Tools & Techniques

------

*If you're supporting computer systems you're going to be hacked or compromised in some way. You have to be prepared to deal with compromised system, you have to be prepared to detect and deal with malware.*

Domain Name lookup tools:

+ `whois` *can be used as part of a coordernate security advanced attack or it just can be used to research something about a company.*
+ `nslookup`
+ `host`
+ `dig`

**Security Controls** is something to implement or use to perform a security function in a defense of a system:

+ **Preventative** pro active solution against a threat (system/tools):
  + Firewall
  + Antimalware agents (Win Defender)
  + Phsysical Gate/Barrier
  + User education
  + User Acount Control (UAC)
  + Group Policy
+ **Detective**
  + Antimalware agents (Malwarebytes, Hitman Pro)
  + Process Explorer
  + CPU-Z (System information)
  + WinDirStat (For an analytical view of the hard drive an looking for anomalous stuff)
+ **Corrective ** (fixing the problem)
  + System Restore in Win10
  + Restoring from a backup file with Veeam
  + Threat eliminated

#### Process Explorer

------

*Looking for strange processes that are eating up memory.*

+ Excessive CPU consumption.

+ Excessive memory storage space consuption. 
+ Excessive RAM consumption.



#### WindDirStat

------

Scan drives or partitions for storage consumption.



#### Eicar

------

Eicar test file is universally know as a test file to test you malware defenses.



#### CPU-Z

------

*It can give you hardware specs really fast.*



#### Windows Page File

------

*When a computer runs out of RAM in Win10 there's an overflow file to temporarily store things that the RAM could not store.*

`pagefile.sys`

`swapfile.sys`

Memory overflow.

