#!/bin/sh

mkdir .devcontainer
curl -c "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/Dockerfile" > .devcontainer/Dockerfile
curl -c "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/devcontainer.json" > .devcontainer/devcontainer.json
curl -c "https://raw.githubusercontent.com/Gantner-Electronics/coding-guidelines/feature/devcontainers/frontend/.devcontainer/init-container.sh" > .devcontainer/init-container.sh
