#!/bin/bash
echo
while [ -n "$1" ]
do
case "$1" in
-all) nmap  -sn $2;;
-target) nmap -sT  $2;;
*) echo "use -all or -target keys";;

esac
shift 
done