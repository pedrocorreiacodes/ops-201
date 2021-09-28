#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
#Use Select-String to search network_report.txt and return only the IP version 4 address.
#Remove the network_report.txt when you are finished searching it.

Function GetIP {
  $fileName = "network_report.txt"
  ipconfig /all > $fileName
  select-String -Path $fileName -Pattern "IPv4 Address"
  rm "network_report.txt
}

GetIP
