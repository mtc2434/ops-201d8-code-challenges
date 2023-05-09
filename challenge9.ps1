# Script Name:               opschallenge11
# Author:                    Marcelo Clark
# Date of latest revision:   5/8/2023
# Purpose: get logs in past 24 hours, get error level logs and put it in a txt file, print events with id 16, print newest 20 events, print newest 500 event sources


#Declaration of variables:


#Declaration of functions:





#main



#All events from the event log from the past 24 hours will be put in the last_24.txt .
 
 #get-eventlog -logname system -after (get-date).addDays(-1) | add-content -path C:\Users\clark\OneDrive\Desktop\last_24.txt unfortunately this only outputs the info as "System.Diagnostics.EventLogEntry". "write-output" doesnt use the proper format for the string. now out-file only puts that same output. 
  get-eventlog -logname system -after (get-date).addDays(-1) | out-file -filepath C:\Users\clark\OneDrive\Desktop\last_24.txt

  #outputs error type events and puts it in text file
  Get-EventLog -LogName System -EntryType Error | out-file -filepath C:\Users\clark\OneDrive\Desktop\error.txt


#Print to the screen all events with ID of 16 from the System event log.
Get-Eventlog -Logname System -InstanceId  16 


#Print to the screen the most recent 20 entries from the System event log.
Get-Eventlog -Logname System -Newest 20




#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog System -Newest 500 | ForEach-Object Source
