#!/bin/bash

# Script Name:                  showtime
# Author:                       Marcelo Clark
# Date of latest revision:      05/03/23
# Purpose:                      Being able to grep specific information without all the fluff

# Declaration of variables

# Declaration of functions


# Main

 # Name of server
 echo "Name of Server:"
 hostname 
 

 
 

 # CPU
    # -vw removes information in the list. version and width were removed because not necessary. All info that is unnecessary to assignment will be removed
    echo "CPU Information:"
    sudo lshw | grep *-cpu -A 6 | grep -vw "version" | grep -vw "width"

# RAM
    echo "RAM Information"
    sudo lshw | grep *-memory -A 3   

# Display adapter
    echo "Display Adapter Information"
    sudo lshw | grep *-display -A 10

# Network adapter
    echo "Network Adapter Information"    
    sudo lshw | grep *-network -A 15


# End