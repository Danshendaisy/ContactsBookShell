!#/bin/bash
#Search Contacts
#Author:Daisy Shen
#Date: 2/25/2019
#Description: This is a simple project that remind users' friends' birthday.
#(cont.) User may also use this app to look up contacts.
echo "Please input your full name: first, last"
read fullName
firstName=${fullName%,*}
echo "Hello" $firstName
Weekday=$(date +%A)
Time=$(date +%I:%M)
AMPM=$(date +%P)
currentDate=$(date +%m-%d)
echo "Today is" $Weekday "and the current time is" $Time $AMPM
if grep -q "$currentDate" mycontacts.txt
then
echo "These contacts are having birthday today"
grep "$currentDate" mycontacts.txt
else
echo "No one is having birthday today"
fi
echo "Enter a contact last name to search in file"
read lastName
if grep -q ", $lastName" mycontacts.txt
then 
echo "this is the record:"
grep -w "$lastName" mycontacts.txt
else
Num_Line=$(cat mycontacts.txt | wc -l)
echo "Not Found.Total" $Num_Line "records"
sort mycontacts.txt
fi
