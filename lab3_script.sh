#!/bin/bash
#Authors : Tracy Kleekamp
#Date : 09/20/19

#Problem 1 Code:
#make sure to document how you are solving each problem

echo "Enter filename: "
read filename
echo "Enter regex"
read regex
grep $regex $filename
echo "Find the number of phone numbers listed below"
egrep "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt -c
echo "The number of emails in the file listed below"
grep "@" regex_practice.txt -c
echo "Phone numbers with 303 area code listed below"
egrep "303-[0-9]{3}-[0-9]{4}$" regex_practice.txt 
echo "Append emails with @geocites with emails given"
grep "@geocities.com" regex_practice.txt > email_results.txt
