#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is a root user or not


# Display the UID
echo "The UID is ${UID}"

# Only display if the UID does not match 1000

UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]

then
	echo "Your UID does not match ${UID_TO_TEST_FOR}"
	exit 1
fi

# Display the username
USER_NAME=$(id -un)

# Test if the command succeeded
if [[ "${?}" -ne 0 ]]
then
	echo "The id command did not execute successfully"
	exit 1
fi

echo "Your User Name is ${USER_NAME}"

# You can use a string test conditional



# Test for != (not equals) for the string




       

