#!/bin/bash

# Test case and if statemants

echo "Starting"

INCOMING_ARG=$1

THIRTYTWO=32

case $INCOMING_ARG in
    4           ) 
        echo "The incoming arg is 4"  
        pwd
        echo "Thanks"
        ;;
    8           ) echo "The incoming arg is 8"  ;;
    $THIRTYTWO  ) echo "The incoming arg is 32" ;;
    *           ) echo "The incoming arg is something else, try 4,8 or 32"
esac    
