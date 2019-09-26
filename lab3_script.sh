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
grep -c '[0-9]\{3\}\-[0-9]\{3\}-[0-9]\{4\}' /Documents/lab_3/regex_practice.txt
echo "The number of emails in the file listed below"
grep -E -c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9]+\.[A-Za-z]{2,6}\b" /Documents/lab_3/regex_practice.txt
echo "Phone numbers with 303 area code listed below"
grep -o "303\-[0-9]\{3\}\-[0-9]\{4\}\b" /Documents/lab_3/regex_practice.txt
echo "Append emails with @geocites with emails given"
grep "@geocities.com" /Documents/lab_3/regex_practice.txt >> email_results.txt
