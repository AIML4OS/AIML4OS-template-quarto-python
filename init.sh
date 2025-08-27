#!/bin/bash

# Get the name of the repo
MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

# Change directory
cd $MY_REPO

# Create a virtual environment and install project dependencies
uv sync

# Change directory
cd ..

# Set VSCode's default interpreter path
mkdir -p .vscode
echo "{ \"python.defaultInterpreterPath\": \"./$MY_REPO/.venv/bin/python\" }" > .vscode/settings.json

# Set Quarto default interpreter path
export QUARTO_PYTHON=./$MY_REPO/.venv/bin/python

# Download data
sh $MY_REPO/download_data.sh