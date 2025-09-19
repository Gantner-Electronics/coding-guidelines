#!/bin/bash

# Script uses npm list to find all packages and dependecy packages in a project
# and checks if any of them are listed in compromised-packages.txt

JSON_FILE="compromised-packages.txt"

if [[ ! -f "$JSON_FILE" ]]; then
	echo "Error: $JSON_FILE not found."
	exit 1
fi

INSTALLED_PACKAGES=$(npm ls -a)

# Read each package and version from the JSON file
cat $JSON_FILE | while read -r package; do
	echo $INSTALLED_PACKAGES | grep -o "$package$"

	if [[ "$?" -eq 0 ]]; then
		echo "Compromised package found: $name@$version"
	fi
done
