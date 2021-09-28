#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
#Use Select-String to search network_report.txt and return only the IP version 4 address.
#Remove the network_report.txt when you are finished searching it.

Function GetIP {
  $report = "network_report.txt"
  ipconfig /all > $report
  select-String -Path $report -Pattern "IPv4 Address"
  rm $report
}

GetIP
