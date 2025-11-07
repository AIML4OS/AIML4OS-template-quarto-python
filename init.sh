#!/bin/bash

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

# Restore the environment
sh $MY_REPO/sspcloud/restore_environment.sh

# Download data
# This script is run with bash because there is a bash array
bash $MY_REPO/sspcloud/download_data.sh