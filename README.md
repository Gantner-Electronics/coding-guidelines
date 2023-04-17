# Ganter Software Development Guidelines

In this repository scripts and Dockerfiles are stored which define tools and configuration for harmonized software developing at Gantner Electronic.

## Guidelines

In the folder "frontend/guidelines" you can find current config files for linting and styling tools to match our guidelines.

## Dev containers

We try to work with dev containers to harmonize our working toolset. There are devcontainers available for frontend for now (backend will follow).

### Frontend

Frontend dev containers have VS Code's ubuntu dev container as base.

You can find it here: https://github.com/devcontainers/images/blob/main/src/base-ubuntu/manifest.json

The base container is equipped with code formatting and static code analyzer configured with Gantner's Guidelines ready to develope Angular TypeScript projects.
