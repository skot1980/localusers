#!/bin/bash

#
# This script creates a user on the local system
# You will be prompted to enter the user name (login), the person's name and the password
# The username, password and host for the account will be displayed


# Make sure the script is being executed with superuser privileges
if [[ "${UID}" -ne 0 ]]
then
	echo "Please run with sudo or as root."
	exit 1
fi

# Get the username(login)
read -p 'Enter the username to create: ' USER_NAME

# Get the name of the person for whom the account is being created
read -p 'Enter the name of the user: ' REAL_NAME

# Get the password
read -p 'Enter the  password: ' PASSWORD

# Create the account
useradd -c "${REAL_NAME}" -m ${USER_NAME}

# Check to see if the useradd command succeeded
# We don't want to tell the user if an account has been added when it hasn't

if [[ "${?}" -ne 0 ]]
then
	echo "The account could not be created."
	exit 1	
fi

# Set the password
echo "${PASSWORD}" | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
	echo "The password for the account could not be set"
	exit 1
fi

# Force password change on first login
passwd -e ${USER_NAME}

# Display the username, password and host where the user was created
echo
echo "username: "
echo "${USER_NAME}"
echo
echo "password: "
echo "${PASSWORD}"
echo 
echo "hostname: "
echo "${HOSTNAME}"


exit 0


