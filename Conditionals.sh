# Script Name: Conditionals.sh                
# Author: Marcelo Clark                      
# Date of latest revision:      05/01/2023
# Purpose:  To create conditionals to detect if files exist, and create them if they do not


# Declaration of variables
ConditionalDirectories=("dira" "dirb" "dirc" "dird")
x=1
exist="These files already exist"

# Declare functions

# Main

#while conditions are true, perform the if statement
while [ $x -lt 2 ]
    do 
    #if the files do exist. prints text
        if [[ -d "${ConditionalDirectories[0]} ${ConditionalDirectories[1]}, ${ConditionalDirectories[2]} ${ConditionalDirectories[3]}" ]]
           
            then
                echo " "

                
           
            
             
             
             #if they dont exist, create the files
                    else

                        echo "These files already exist"

                        touch $(mkdir "dira")
                        touch $(mkdir "dirb")
                        touch $(mkdir "dirc")
                        touch $(mkdir "dird")
                        
                        exit

                    
                     
       
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