# Scripts

- Example scripts:
  - [cli-argv](cli-argv.sh) : Using positional command line arguments to bash scripts.
  - [getopts](getopts.sh) : Using arguments and options with getopt built in.

- [Snippets](#snippets)
  * [Check for root-ness](#check-for-root-ness)
    + [Sequences e.g. for loops](#sequences-eg-for-loops)
    + [Generate a RUNID - Uniqe ID](#generate-a-runid---uniqe-id)
    + [Generate a random number within a range](#generate-a-random-number-within-a-range)
    + [Get rid of parentheses in scripts](#get-rid-of-parentheses-in-scripts)
    + [Check for rootness](#check-for-rootness)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>



# Snippets

## Check for root-ness
e.g. - Check to see if user is root, and exit if so.
```
 if [[ `id -u` -eq 0 ]]  ; then echo "You are root - run this script as postgres"; exit 1 ;fi
```

### Sequences e.g. for loops
Generate a sequence of numbers between 20 and 25
* Using seq
```
 for i in $(seq 20 25) ; do echo ">" $i ; done
 ```
 

### Generate a RUNID - Uniqe ID
Creates a unique id based on current time and PID. Year,Month,Day,Time-PID is quite human readable.
```
$ RUNID=$(date +'%y%m%d%H%M'-$$)
$ echo $RUNID
1908101812-3028
```

### Generate a random number within a range
Generate a random number between 1 and 10.
```
NUM=$((1 + RANDOM % 10))
```
see also : [stack-overflow](https://stackoverflow.com/questions/1194882/how-to-generate-random-number-in-bash)



### Get rid of parentheses in scripts
```tr -d '()'```
### Check for rootness
```  if [ $(id -u) -eq 0 ] ; then echo "root" ; else echo "not root" ; fi ```
```
#!/bin/bash
 if [ $(id -u) -eq 0 ] ; then
  echo ""
 else
  echo "Must be root"
  exit 1
fi
```
