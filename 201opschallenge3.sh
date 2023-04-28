#!/bin/bash

# Script:  201opschallenge3.sh                     
# Author:  Marcelo Clark                      
# Date of latest revision:   4/27/2023   
# Purpose:   create an array                   

# Declare global variables
folders=("dir1" "dir2" "dir3" "dir4")



# Declare functions

# Main 
# Had trouble pushing. had to go to settings and click off on git terminal authenticate, turn on again after window closes)

#The indices are called within the array, and the touch command creates the text file within the corresponding directory. The forward slash makes the pathing go from the directory itself to inside the directory
touch "${folders[0]}/directory1.txt"
touch "${folders[1]}/directory2.txt"
touch "${folders[2]}/directory3.txt"
touch "${folders[3]}/directory4.txt"