# Script:  201opschallenge11.sh                     
# Author:  Marcelo Clark                      
# Date of latest revision:   5/08/2023

#purpose Enable file and printer sharing, allowing ICMP traffic, Enable remote management, remove bloatware, enable hyper-v, disable smbv1 		    

#sources: https://learn.microsoft.com/en-us/windows-server/storage/file-server/troubleshoot/detect-enable-and-disable-smbv1-v2-v3 https://www.makeuseof.com/tag/easily-remove-bloatware-windows-10/ 

#Declaration of variables:


#Declaration of functions:

#disclaimer! run powershell in admin mode

#Main

# Enables file and printer sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

# Creates new rule to allow ICMP traffic
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow

# Enables remote management
Enable-PSremoting -Force

#Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))


# Enables Hypervisors
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

#disables smbv1 
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
