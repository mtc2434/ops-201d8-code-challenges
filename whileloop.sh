# Script Name: Opschallenge4                 
# Author: Marcelo Clark                      
# Date of latest revision:      04/29/2023
# Purpose:  To output the list of running processes on the ubuntu server, and ability to kill a PID                     Purpose

# Declaration of variables

# declares variable for the displaying all processes running command
running_process_list="$(ps aux)"

#Sets up counter for while loop
x=1

# Declaration of functions



# Main

#While loop condition is that if x is less than 5, the condition is not met
while [ $x -le 5 ] 

#Conditions not met, goes to line 23 to perform do
    do 

        #Prints text in quotes
        echo "Here are the running processes"

        #Calls upon the variable we set up earlier that performs ps aux
        echo $running_process_list

        #prints tect in quotes
        echo "Enter PID to kill"

        #reads the variable that is set in the kill command line
        read processid

        #This line kills the PID that the user inputs. looks at the list of processes, grabs the variable that is set up by using the awk command which allows manipulation of machine data. then takes the second column of the list and puts that in the $processid variable.
        kill $(ps aux | grep $processid | grep -v grep | awk '{print $2}') 

        #tells script to grab counter from earlier, adds 1 each iteration
        x=$(( $x + 1 ))
    done

# End