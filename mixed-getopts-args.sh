#!/usr/bin/env bash 

#getopts is a shell builtin.

# getopts takes a list of options that it will process - the list of options
# are contained in a `"` list.  The second parameter is the name of a variable
# that will be assigned the value of the option.  By convention this variable 
# is named "option". The value $OPTARG is a special named variable that will
# be assigned to the value of the option (if any).

# The vlaues of $x e.g. $1, $2 etc. are not changed if the 
# arg has the format -X. 

echo "The value of \$@ is $@"
echo "The value of \$# is $#"
echo "The value of \$0 is $0"

#Remember $@ is not the same as $0.  $@ only contains
#the array of arguments not the called script ($0).
let c=1
for item in $@ ; do
    echo The value of \$$c is  $item
    ((c++))
done

#When getopts loops through the string - it will exit
#whenever it hits a passed argument that is not preceeded 
#by a `-`.
while getopts "f:read:" opt
do   
    echo "value of \$opt is $opt the value of \$OPTARG is $OPTARG"
done


# To combine switches with a trailing arg we can use the 
# length of $@ ($#) to figure out the last arg.
declare -a ARGLIST=( $@ )
TRAILING=${ARGLIST[$#-1]}

echo "The trailing value \$TRAILING is $TRAILING"

# in terms of positional ARGS the - optiond are treated just like 
# regular arguments - in other words in terms of position it makes
# no difference.  Once getopts has run, you're done.  It makes no
# sense to run getopts more than once per script.
