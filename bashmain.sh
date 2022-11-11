#!/usr/bin/env bash

#
#  Example of how to use a main() function for readability. 
#
# $ ./bashmain.sh
# the argument passed was arg1
# the argument passed was arg2

#main function at the top for readability
main() {
    func1 arg1
    func2 arg2
}

func1() {
    echo the argument passed was $1
}

func2() {
    subfunc2 $1
}

subfunc2() {
    echo the argument passed was $1
}

# Call main.
main
