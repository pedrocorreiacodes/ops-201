#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
ipconfig /all > "network_report.txt"

#Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path "network_report.txt" -Pattern "IPv4 Address"

#Remove the network_report.txt when you are finished searching it.
rm "network_report.txt