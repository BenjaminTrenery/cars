#! /bin/bash
# cars.sh
# Benjamin Trenery

quit=false

while [ $quit == false ]
do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read -r NUM
	
	case $NUM in
		"1")
			echo "Give the year"
			read -r year
			echo "Give Make"
			read -r  make
			echo "Give Model"
			read -r model

			echo "$year:$make:$model"
			echo "$year:$make:$model" >> My_old_cars
			;;
		"2")
		        sort My_old_cars
			;;
		"3")
			echo "Goodbye"
			quit=true
			;;
		*)
			echo "Please give a number between 1 and 3"
			;;
	esac

done 
