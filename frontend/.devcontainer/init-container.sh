#!/bin/zsh

# run personal scripts to set identities or personal application settings
if [ -f /tmp/scripts/set-gantner-git-identity.sh ]; then
	/tmp/scripts/set-gantner-git-identity.sh
else
    echo 'Cannot set Gantner Git identity. File not found'
fi

# install angular
export NG_CLI_ANALYTICS="ci"
npm i -g @angular/cli@12

# install code formatting and linting tools into workspace
npm i eslint eslint-config-prettier eslint-plugin-prettier prettier @typescript-eslint/eslint-plugin @typescript-eslint/parser typescript htmlhint stylelint stylelint-prettier stylelint-config-recommended --save-dev

# downlaod code formatting and linting config files
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/guidelines/ecma/eslintrc.json" > $WORKSPACE_FOLDER/.eslintrc.json
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/guidelines/ecma/prettier.json" > $WORKSPACE_FOLDER/.prettierrc.json
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/guidelines/html/htmlhintrc.json" > $WORKSPACE_FOLDER/.htmlhintrc
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/guidelines/style/stylelintrc.json" > $WORKSPACE_FOLDER/.stylelintrc.json
