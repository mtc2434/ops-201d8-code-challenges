# Script Name: Conditionals.sh                
# Author: Marcelo Clark                      
# Date of latest revision:      05/01/2023
# Purpose:  To create conditionals to detect if files exist, and create them if they do not


# Declaration of variables
ConditionalDirectories=("dira" "dirb" "dirc" "dird")

# Declare functions

# Main

#while conditions are true, perform the if statement
while true;
    do 
    #if the files do exist. prints text
        if [[ -e "${ConditionalDirectories[0]} ${ConditionalDirectories[1]}, ${ConditionalDirectories[2]} ${ConditionalDirectories[3]}" ]]
            then 
            echo "these directories exist"
             
             #if they dont exist, create the files
                    else 
                        touch $(mkdir "dira")
                        touch $(mkdir "dirb")
                        touch $(mkdir "dirc")
                        touch $(mkdir "dird")
       
       #ends if statement
        
        fi      

        done 
        
   
            













 #[ $( ! -e ${ConditionalDirectories[0]} ${ConditionalDirectories[1]} ${ConditionalDirectories[2]} ${ConditionalDirectories[3]} ) ]
 #echo "These directories do not exist"
#done
#if [[ -e "dircon" ]]
#then echo "Directory dircon exists"
#else $touch $( mkdir dircon )
#fi 




#end