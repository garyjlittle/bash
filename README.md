# Scripts

- Example scripts:
  - cli-argv : Using positional command line arguments to bash scripts.

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
