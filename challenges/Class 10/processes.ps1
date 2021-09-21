#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property cpu -Descending

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property id -Descending

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5

#Start the process Internet Explorer (iexplore.exe). Careful not to get Rick Rolled.
Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://www.youtube.com/watch?v=iik25wqIuFo

#Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
for ($i = 1 ; $i -le 10 ; $i++)
{
    Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/
}

#Close all Internet Explorer windows.
Stop-Process -Name "iexplore"

#Kill a process by its Process Identification Number.
Stop-Process -Id 8928 