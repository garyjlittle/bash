#! /bin/bash
# See Also https://www.tldp.org/LDP/abs/html/othertypesv.html
echo ""
echo 'Does not include the script name.  $@ -> ' $@
echo 'Does not include the script name.  $* ->' $*
echo
echo 'The script name is $0.  $0 ->' $0
echo 'There are $# arguments.  $# ->' $#
echo
echo 'Loop through the list of arguments using shift'
for i in $(seq $#)
do 
    echo "Argument $i is $1"
    shift
done
echo ""
echo "Done"
