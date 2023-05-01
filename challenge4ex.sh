# Script Name: Opschallenge4                 
# Author: Marcelo Clark                      
# Date of latest revision:      04/29/2023
# Purpose:  To output the list of running processes on the ubuntu server, and ability to kill a PID                     Purpose

# Declaration of variables
# declares variable for the displaying all processes running command
running_process_list=$(ps aux)


# Declaration of functions
#type_and_kill= kill $(ps aux | grep $processid | grep -v grep | awk '{print $2}')




# Main
#echo "Here are the running processes"
#echo $running_process_list
#echo "Enter PID to kill"
#read processid
#kill $(ps aux | grep $processid | grep -v grep | awk '{print $2}')

while true 
do 
    echo "Here are the running processes"
    echo $running_process_list
    echo "Enter PID to kill"
    read processid
    kill $(ps aux | grep $processid | grep -v grep | awk '{print $2}')
    if $(ps -A --no-headers | wc -l) = 0
    then exit 
    









# End