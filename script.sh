#!/bin/bash

NAME=$1
LASTNAME=$2


if [[ "$3" = "true" ]]
then
	echo "your name is $1 $2"
else
	echo "make the third param true to print your name"
fi
