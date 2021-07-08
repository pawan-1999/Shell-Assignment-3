#! bin/bash/ -x

#Write a short program that prints each number from 1 to 100 on a new line.

#For each multiple of 3, print "Fizz" instead of the number.

#For each multiple of 5, print "Buzz" instead of the number.

#For numbers which are multiples of both 3 and 5, print "FizzBuzz" instead of the number.

#constant
DIVISIBLE=0

for ((i=1;i<=100;i++))
do
	if [[ $(( $i % 3 )) -eq $DIVISIBLE ]] && [[ $(( $i % 5 )) -eq $DIVISIBLE ]]
	then
		echo "FizzBuzz"
	elif [ $(( $i % 3 )) -eq $DIVISIBLE ]
	then
		echo "Fizz"
	elif [ $(( $i % 5 )) -eq $DIVISIBLE ]
	then
		echo "Buzz"
	else
		echo "$i"
	fi
done
