#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
#Use Select-String to search network_report.txt and return only the IP version 4 address.
#Remove the network_report.txt when you are finished searching it.

Function GetIP {
  ipconfig /all > "network_report.txt"
  select-String -Path "network_report.txt" -Pattern "IPv4 Address"
  rm "network_report.txt
}

GetIP
