#!/bin/bash

# 10. Logged in/not
# Aim:- To write a shell script to check whether a user has logged in or not and display the login name.The logname should be app# lied at the command prompt and check possible validation

function checkUser {                                                            

        status=0                                                                
        for u in $(who | awk '{print $1}' | sort | uniq)                        
        do                                                                      
            if [ "$u" == "$1" ]; then                                           
                    return 0                                                    
            fi                                                                  
        done                                                                    
        return 1                                                                
}                                                                               

if [ $# -eq 0 ] ; then                                                          
        echo 'You need to enter a user'                                         
        read user                                                               
        checkUser $user                                                         
        ret_val=$?                                                              
else                                                                            
        user=$1                                                                 
        checkUser $user                                                         
        ret_val=$?                                                              
fi                                                                              

if [ $ret_val -eq 0 ]; then                                                     
        echo "User Logged In"                                                   
        exit 0                                                                  
else                                                                            
        echo "User Not Logged In"                                               
        exit 1                                                                  
fi
