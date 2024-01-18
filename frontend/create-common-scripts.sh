#!/bin/sh

read -p "Do you want to to create git identity file? (yes/no) " yn

case $yn in
        yes ) gitIdentity=1;;
        no ) echo Will not create git-identity-file;;
        * ) echo Will not create git-identity-file;;
esac

if [ $gitIdentity ]; then
        echo "Writing git identity file..."
        read -p "Enter your email address: " email
        read -p "Enter your name: " username

        rm -rf ~/scripts/set-gantner-git-identity-file.sh
        echo "#!/bin/sh" >> ~/scripts/set-gantner-git-identity-file.sh
        echo "" >> ~/scripts/set-gantner-git-identity-file.sh
        echo "git config --global user.email \"$email\"" >> ~/scripts/set-gantner-git-identity-file.sh
        echo "git config --global user.name \"$username\"" >> ~/scripts/set-gantner-git-identity-file.sh
        echo "echo \"Git identity (Gantner) set!\"" >> ~/scripts/set-gantner-git-identity-file.sh
fi
