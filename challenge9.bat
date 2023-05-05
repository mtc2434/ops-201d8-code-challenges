#All events from the event log from the past 24 hours will be put in the last_24.txt .
 
 #get-eventlog -logname system -after (get-date).addDays(-1) | add-content -path C:\Users\clark\OneDrive\Desktop\last_24.txt unfortunately this only outputs the info as "System.Diagnostics.EventLogEntry". "write-output" doesnt use the proper format for the string. now out-file only puts that same output. 
  get-eventlog -logname system -after (get-date).addDays(-1) | out-file -filepath C:\Users\clark\OneDrive\Desktop\last_24.txt
