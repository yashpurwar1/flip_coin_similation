#!/bin/bash -x
echo "Welcome to Flip coin simulation problem"

heads_count=0
tails_count=0

while [ true ]
do
	toss=$((RANDOM%2))

	if [ $toss -eq 0 ]
	then
	echo "Heads"
	(( heads_count++ ))
	else
	echo "Tails"
	(( tails_count++))
	fi

difference=$(($heads_count-$tails_count))
	if [ $heads_count -eq 21 -a $difference -ge 2 ]
        then
        echo "Heads won by $difference points"
        	break
	fi

        if [ $tails_count -eq 21 -a ${difference#-} -ge 2 ]
        then
         echo "Tails won by ${difference#-} points"
         	break
   	fi
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"
