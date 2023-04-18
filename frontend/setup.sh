#!/bin/sh

mkdir .devcontainer
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/Dockerfile" > .devcontainer/Dockerfile
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/devcontainer.json" > .devcontainer/devcontainer.json
curl -s "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/init-container.sh" > .devcontainer/init-container.sh
