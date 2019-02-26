#!/bin/bash
#Script Name: Creat contacts
#Author Name: Daisy Shen
#Date: 2-25-2019
#Description: This is a short project that will ask user for contact infomation
#and store the information in mycontatcts.txt
touch mycontacts.txt
echo "Please select your option" 
options=("Enter a contact" "Show contacts" "Exit")
select opt in "${options[@]}"
do  
	case $opt in 
		"Enter a contact")
	 	echo "What's your friend's fullname:(first, last)" 
		read fullName
		echo -n $fullName" " >> mycontacts.txt
	        echo "What's your friend's birth date(dd-mm)?"
		read birthDate
		dd=${birthDate%-*}
		echo -n $birthDate >> mycontacts.txt
 		echo "What's your friend's phone number (xxx-yyy-yyyy)"
		read phoneNum
		echo -n " "$phoneNum" " >>mycontacts.txt
		echo "Whats your friend's email?(name@domain.xyz)"
		read email
		echo -n $email" " >>mycontacts.txt
		echo " ">> mycontacts.txt
		echo "Contact info saved!"
		break 
		;;
		"Show contacts")
		cat mycontacts.txt
		break
		;;
		"Exit")
		break
		;;
		*)
		echo "Invalid input!"
	esac
done
		
