#!bin/bash

read -p "Enter a number " num1
read -p "Enter another number " num2

while [ "$menu" != 2 ]
do
	echo "1. Calculate these numbers "
	echo "2. Exit "
	read -p "Choose an option " menu
	if [ "$menu" == 1 ]
	then
		divide=$(expr $num1 / $num2)
		add=$(expr $num1 + $num2)
		subtract=$(expr $num1 - $num2)
		multiply=$(expr $num1 \* $num2)
		echo "Division: $divide"
		echo "Addition: $add" 
		echo "Subtraction: $subtract" 
		echo "Multiplication: $multiply"
	elif [ "$menu" == 2 ]
	then
		exit
	else
		echo "Invalid. Pick 1 or 2"
	fi
done

	
