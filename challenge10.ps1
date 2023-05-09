# Script Name:               opschallenge10
# Author:                    Marcelo Clark
# Date of latest revision:   5/8/2023
# Purpose: Print to the terminal screen all active processes ordered by highest CPU time consumption at the top, Print to the terminal screen all active processes ordered by highest Process Identification Number at the top. Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top. Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending


#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
 #Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe"
 $browser = Start-Process "chrome" "https://owasp.org/www-project-top-ten/" -PassThru

#Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad"
}


#Close all instances of the Notepad.
Get-Process "notepad" | Stop-Process


#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
$processId = Read-Host "Enter the Process ID to terminate"
Stop-Process -Id $processId -Force
