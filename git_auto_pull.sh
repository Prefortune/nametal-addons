#!/bin/bash
BRANCH=$1
REPO_PATH=$2
SERVICE=$3

cd $REPO_PATH || exit

# Pull latest code
git fetch origin
git reset --hard origin/$BRANCH

# Restart Odoo service
sudo systemctl restart $SERVICE

echo "[$(date)] Branch '$BRANCH' pulled and service '$SERVICE' restarted."
