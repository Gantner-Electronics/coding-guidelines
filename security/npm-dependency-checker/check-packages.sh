#!/bin/bash

# Script uses npm list to find all packages and dependecy packages in a project
# and checks if any of them are listed in compromised-packages.txt
# You can run this script directly with following command:
#        bash <(curl -s https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/refs/heads/main/security/npm-dependency-checker/check-packages.sh)

PACKAGES_TO_FIND_FILE=$(curl -s https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/refs/heads/main/security/npm-dependency-checker/compromised-packages.txt)

if [[ -z "{$PACKAGES_TO_FIND_FILE}" ]]; then
	echo "Error: $PACKAGES_TO_FIND_FILE not found."
	exit 1
fi

INSTALLED_PACKAGES=$(npm ls -a)

# Read each package and version from the JSON file
echo $PACKAGES_TO_FIND_FILE | while read -r package; do
	echo $INSTALLED_PACKAGES | grep -o "$package$"

	if [[ "$?" -eq 0 ]]; then
		echo "Compromised package found: $package"
	fi
done
