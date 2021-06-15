#!/bin/bash -x
echo "Welcome to Flip coin simulation problem"

heads_count=0
tails_count=0
flips=0

while [ true ]
do
	(( flips++ ))
	toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
	echo "Heads"
	(( heads_count++ ))
else
	echo "Tails"
	(( tails_count++))
fi

if [ $heads_count -eq 21 -o $tails_count -eq 21 ]
then
	break
fi
done

echo "Heads-count=$heads_count and Tails-count=$tails_count"

if [ $heads_count -gt $tails_count ]
then
	echo "Heads won by $(($heads_count-$tails_count )) counts"
elif [ $tails_count -gt $heads_count ]
then
	echo "Tails won by $(($tails_count-$heads_count)) counts"
else
	echo "Its a tie"
fi
