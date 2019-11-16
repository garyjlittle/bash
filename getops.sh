#! /bin/bash

# Example of using arguments with optargs
# See also  http://www.tldp.org/LDP/abs/html/internal.html#EX33

NO_ARGS=0
let VERBOSE=0
DEST=""
SOURCE=""

if [ $# -eq $NO_ARGS ] ; then
    echo "No arguments"
    exit 1
fi
 

# Use the "getopts <stringlist>"" to set variables based on the arguments passed in.
# Some options have an argument e.g. -f <filename> and are specified with a colon
# Some options do not, and are more like a switch e.g.  Enable debugging with -d
# s = source pathname
# d = destination pathname
# v = Enable verbose.

while getopts "s:d:v" Option
do
    case $Option in
        d   )   DEST=$OPTARG ;;
        s   )   SOURCE=$OPTARG ;;
        v   )   VERBOSE=1 ;;
    esac
done

if [ ! -z $DEST  ]; then echo "The Destination is $DEST" ; fi
if [ ! -z $SOURCE ]; then echo "The Source is $SOURCE" ; fi
if [  $VERBOSE -gt 0 ]; then echo "Varboseness is $VERBOSE" ; fi