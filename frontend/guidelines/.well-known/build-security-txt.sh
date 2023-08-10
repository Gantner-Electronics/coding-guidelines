#!/bin/sh

TEXT=$(cat base-security.txt)
TEXT="$TEXT\nCanonical: $1"

echo "$TEXT" > security.txt

gpg --clear-sign security.txt
rm security.txt
mv security.txt.asc security.txt
