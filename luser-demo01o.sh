#!/bin/bash


# This script displays various information to the screen.

# Diplay 'Hello'

echo 'Hello'


# Assign a value to a variable

WORD="script"


# Display the value in the variable
echo "$WORD"


#Combine variables with harcoded text
echo "This is a shell $WORD"

#Display the contents of the variable using an alternate syntax
echo "This is a shell ${WORD}"

#Append text to the variable
echo "${WORD}ing is fun!"

#Create a new variable
ENDING='ed'

#Combine the two variables
echo "This is ${WORD}${ENDING}."

#Change the value stored in the ENDING variable (Reassignment)
ENDING='ing'

echo "${WORD}${ENDING} is fun"



