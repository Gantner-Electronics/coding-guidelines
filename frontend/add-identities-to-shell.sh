identitiesFileName=~/scripts/set-identities.sh

if [ `echo $SHELL | grep -c "bash"` -gt 0 ]; then
        echo "bash detected as default shell"

        if [ grep $identitiesFileName ~/.bashrc]; then
                echo "Identities file already in .bashrc"
        else
                echo "Adding identities file to .bashrc"
                echo ". $identitiesFileName" >> ~/.bashrc
        fi
fi

if [  `echo $SHELL | grep -c "zsh"` -gt 0 ]; then
        echo "zsh detected as default shell"

        if [ grep $identitiesFileName ~/.zshrc]; then
                echo "Identities file already in .zshrc"
        else
                echo "Adding identities file to .zshrc"
                echo ". $identitiesFileName" >> ~/.zshrc
        fi
fi
