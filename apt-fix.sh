#!/bin/bash

if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root (use sudo ./apt-fix.sh)"
  exit
fi

echo "--- Fixing Yarn GPG Signature Issues ---"

echo "Fetching missing GPG key..."
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor --yes | tee /usr/share/keyrings/yarn-archive-keyring.gpg > /dev/null

echo "Configuring Yarn source list..."
echo "deb [signed-by=/usr/share/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list > /dev/null

echo "Clearing old package lists..."
rm -rf /var/lib/apt/lists/*

echo "Running system update..."
apt-get update
apt-get install -f -y

echo "--- Success: GPG error resolved ---"