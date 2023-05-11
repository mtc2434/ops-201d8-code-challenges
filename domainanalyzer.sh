#!/bin/bash

# Script:  201opschallenge3.sh                     
# Author:  Marcelo Clark                      
# Date of latest revision:   5/10/2023   
# Purpose:   Create a script that asks a user to type a domain, then displays information about the typed domain                   

# Declare global variables


# Declare functions

domain_info() { 
    
    #Establishes the variable domain after user inputs text

read -p " Type domain name " domain
    

echo " whois output: "

# uses whois command for the domain variable
    whois $domain 
    
    echo "dig output:"
    
    #uses dig command for the domain variable
    
    dig $domain 
    
    echo "host output"
   
   #uses the host command for the domain variable
    host $domain

    echo "nslookup output"
    
    #uses the nslookup command for the domain variable
            nslookup $domain


   
   
   
    
   
    
    
    
    
    
    
    
    
    }

#creates the textfile "domain.txt"
touch "domaininfo.txt"
# calls the function and tells it to put it into the text file
domain_info > "domaininfo.txt"
