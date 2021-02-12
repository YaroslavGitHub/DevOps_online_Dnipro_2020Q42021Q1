#!/bin/bash
echo Please select a menu item
echo
echo "1) From which ip were the most requests?"
echo "2) What is the most requested page?"
echo "3) How many requests were there from each ip?"
echo "4) What non-existent pages were clients referred to?"
echo "5) What time did site get the most requests?"
echo "6) What search bots have accessed the site? (UA + IP)"

echo
read CHOICE
case $CHOICE in
1) cat example_log.log | awk '{ print $1 ; }' | sort | uniq -c | sort -n -r | head -n 10;;
2) cat example_log.log | awk '{ print $7 }' | sort | uniq -c | sort -rn | head -n 25;;
3) cat example_log.log | awk '{print "requests from " $1}' | sort | uniq -c | sort;;
4) grep '404'  example_log.log | sed 's/, /,/g' | awk {'print $7'} | sort | uniq -c | sort -n -r | head -10;;
5) awk '{print $4}' example_log.log | cut -d: -f1 | uniq -c;;
6) cat example_log.log | awk -F'|' '!/Applebot|Googlebot|bingbot/{print $5 $11}' | sort -nr | uniq -c | head -30;;

*) echo You made an invalid selection;;
esac
echo Have a great day!