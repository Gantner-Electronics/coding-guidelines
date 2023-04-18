#!/bin/zsh

# install angular
export NG_CLI_ANALYTICS="ci"
npm i -g @angular/cli@12

# install code formatting and linting tools into workspace
npm i eslint eslint-config-prettier eslint-plugin-prettier prettier @typescript-eslint/eslint-plugin @typescript-eslint/parser typescript --save-dev

# downlaod code formatting and linting config files
#touch $WORKSPACE_FOLDER/.eslintrc
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/guidelines/ecma/eslintrc.json" > $WORKSPACE_FOLDER/.eslintrc.json
#touch $WORKSPACE_FOLDER/.prettierrc.json
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/guidelines/ecma/prettier.json" > $WORKSPACE_FOLDER/.prettierrc.json