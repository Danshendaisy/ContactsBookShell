#!/bin/bash
#For loop calculator
#Author:Daisy SHen
#Date:2/25/2019
#Description:This is a simple project which calculate mathematical expression
#using for loop
touch output.txt
for i in 2 4 6 8
do	
	for j in 2 4 6 8
	do
		echo "i:" $i >>output.txt
		echo "j" $j >>output.txt 
		echo "scale = 2; (2^$j)/($i+$j)" |bc >>output.txt
	done 
done
