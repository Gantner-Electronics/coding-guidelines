#!/bin/sh

# Run this script directly with
#        sh <(curl -s https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/refs/heads/main/frontend/setup.sh)

mkdir .devcontainer
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/.devcontainer/Dockerfile" > .devcontainer/Dockerfile
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/.devcontainer/devcontainer.json" > .devcontainer/devcontainer.json
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/main/frontend/.devcontainer/init-container.sh" > .devcontainer/init-container.sh
