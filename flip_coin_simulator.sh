#!/bin/bash -x
echo "Welcome to Flip coin simulation problem"

heads_count=0
tails_count=0
flips=0

while [ $flips -ne 5 ]   #Tossing the coin for 5 times
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
done
echo "Heads-count=$heads_count and Tails-count=$tails_count"

if [ $heads_count -gt $tails_count ]
then
	echo "Winner is heads"
else
	echo "Winner is tails"
fi
