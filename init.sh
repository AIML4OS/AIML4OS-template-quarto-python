#!/bin/bash

# Get the name of the repo
MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

# Create a virtual environment and install project dependencies
uv sync -r $MY_REPO/pyproject.toml

# Download data
sh $MY_REPO/download_data.sh
