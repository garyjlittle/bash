# bash
Everyone loves bash

- Example scripts:
  - cli-argv : Using positional command line arguments to bash scripts.

if then else.

## Check for root-ness
e.g. - Check to see if user is root, and exit if so.
```
 if [[ `id -u` -eq 0 ]]  ; then echo "You are root - run this script as postgres"; exit 1 ;fi
```
