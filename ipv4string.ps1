# Script Name: ipv4string.ps1
# Author: Marcelo Clark
# Date of last revision: 5/09/23
# Purpose: Create a local file called network_report.txt that holds the contents of an ipconfig /all command. Use Select-String to search network_report.txt and return only the IP version 4 address. Remove the network_report.txt when you are finished searching it.

# Declaration of variables

# Declaration of functions


# Main


# creates the file networkreport.text on the desktop
New-Item -Path C:\Users\clark\OneDrive\Desktop\networkreport.txt

# Takes the output of the ipconfig /all command and puts it in the networkreport.txt file
ipconfig /all | Out-File -filepath C:\Users\clark\OneDrive\Desktop\networkreport.txt 

# Selects the text for the IPv4 address information
Select-String -Path C:\Users\clark\OneDrive\Desktop\networkreport.txt -Pattern 'IPv4 Address' 

# Removes networkreport.txt
Remove-Item C:\Users\clark\OneDrive\Desktop\networkreport.txt
