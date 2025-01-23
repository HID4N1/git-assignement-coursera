#!/usr/bin/env bash
# File: guessinggame.sh.#!/bin/sh

#When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.
#If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
#If the user's guess is correct then they should be congratulated and the program should end.
#The program should not end until the user has entered the correct number of files in the current directory.
#The program should be able to be run by entering bash guessinggame.sh into the console.
#The program should contain at least one function, one loop, and one if statement.
#The program should be more than 20 lines of code but less than 50 lines of code.

nfiles=$(ls -1 | wc -l)

function question {
echo "Dear User, how many files are in the current directory (response should be a number)?"
read response
#getting the number of files
}

#running function

question

#looping
while [[ $response -ne $nfiles ]]; do
  #if statements
	if [[ $response -gt $nfiles ]]; then
		echo "Your guess is too high"
	elif [[ $response -lt $nfiles ]]; then
		echo "Your guess is too low."
  else
    echo "Your guess is probably invalid"
	fi
  question
done

echo "Dear user, you response is.... just right! :D "
