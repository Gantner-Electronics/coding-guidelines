#!/bin/sh

# Run this script directly with
#        sh <(curl -s https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/refs/heads/main/frontend/create-common-scripts.sh)

scriptsFolder=~/scripts
identitiesFileName=$scriptsFolder/set-identities.sh

if [ ! -d $scriptsFolder ]; then
        mkdir -p $scriptsFolder
fi

if [ -e $identitiesFileName ]; then
        backupIdentitiesFileName=$scriptsFolder/set-identities.old-`date +%s`.sh
        echo "Backing up existing set-identities.sh file to $backupIdentitiesFileName"
        mv $identitiesFileName $backupIdentitiesFileName
        rm -rf $identitiesFileName
fi

#* Git identity

read -p "Do you want to to create git identity file? (yes/no) " yn

case $yn in
        yes ) gitIdentity=1;;
        no ) echo Will not create git-identity-file;;
        * ) echo Will not create git-identity-file;;
esac

if [ $gitIdentity ]; then
        read -p "Enter your email address: " email
        read -p "Enter your name: " username

        fileName=$scriptsFolder/set-gantner-git-identity.sh
        rm -rf $fileName
        echo "#!/bin/sh" >> $fileName
        echo "" >> $fileName
        echo "git config --global user.email \"$email\"" >> $fileName
        echo "git config --global user.name \"$username\"" >> $fileName
        echo "echo \"Git identity (Gantner) set!\"" >> $fileName
        echo "Creating git identity file..."

        echo "Adding git identity file to $identitiesFileName"
        echo $fileName >> $identitiesFileName
fi

echo "set +a" >> $identitiesFileName


#* Azure Artifacts identity

read -p "Do you want to to create azure artifacts identity file? (yes/no) " yn

case $yn in
        yes ) aaIdentity=1;;
        no ) echo Will not create azure artifacts identity file;;
        * ) echo Will not create azure artifacts identity file;;
esac

if [ $aaIdentity ]; then
        read -p "Enter your email address: " email
        read -p "Enter your access token: " token

        fileName=$scriptsFolder/set-azure-artifacts-npm-identity.sh
        rm -rf $fileName
        echo "#!/bin/sh" >> $fileName
        echo "" >> $fileName
        echo "export NPM_EMAIL=$email" >> $fileName
        echo "export NPM_TOKEN=$token" >> $fileName
        echo "export NPM_TOKEN_BASE64=$(echo -n $token | base64)" >> $fileName
        echo "echo \"Azure Artifacts identity set!\"" >> $fileName
        echo "Creating azure artifacts identity file..."

        echo "Adding azure artifacts identity file to $identitiesFileName"
        echo ". $fileName" >> $identitiesFileName
fi


#* AWS identity

read -p "Do you want to to create aws identity file? (yes/no) " yn

case $yn in
        yes ) awsIdentity=1;;
        no ) echo Will not create aws identity file;;
        * ) echo Will not create aws identity file;;
esac

if [ $awsIdentity ]; then
        read -p "Enter your aws access key id: " accessKeyId
        read -p "Enter your aws secret access key: " secretAccessKey
        read -p "Enter your aws session token: " sessionToken

        fileName=$scriptsFolder/set-aws-identity.sh
        rm -rf $fileName
        echo "#!/bin/sh" >> $fileName
        echo "" >> $fileName
        echo "export AWS_ACCESS_KEY_ID=$accessKeyId" >> $fileName
        echo "export AWS_SECRET_ACCESS_KEY=$secretAccessKey" >> $fileName
        echo "export AWS_SESSION_TOKEN=$sessionToken" >> $fileName
        echo "echo \"AWS identity set!\"" >> $fileName
        echo "Creating aws identity file..."

        echo "Adding aws identity file to $identitiesFileName"
        echo ". $fileName" >> $identitiesFileName
fi

#* Docker Hub identity

read -p "Do you want to to create docker hub identity file? (yes/no) " yn

case $yn in
        yes ) dockerHubIdentity=1;;
        no ) echo Will not create docker-hub-identity-file;;
        * ) echo Will not create docker-hub-identity-file;;
esac

if [ $dockerHubIdentity ]; then
        read -p "Enter your username: " username
        read -p "Enter your PAT: " pat

        fileName=$scriptsFolder/set-docker-hub-identity.sh
        rm -rf $fileName
        echo "#!/bin/sh" >> $fileName
        echo "" >> $fileName
        echo "export DOCKER_HUB_USER=$username" >> $fileName
        echo "export DOCKER_HUB_PAT=$pat" >> $fileName
        echo "echo \"DockerHub identity set!\"" >> $fileName
        echo "Creating docker hub identity file..."

        echo "Adding docker hub identity file to $identitiesFileName"
        echo ". $fileName" >> $identitiesFileName
fi

echo "set -a" >> $identitiesFileName
