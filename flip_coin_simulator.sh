#!/bin/bash -x
echo "Welcome to Flip coin simulation problem"

toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
	echo "Heads"
else
	echo "Tails"
fi
