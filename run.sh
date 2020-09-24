#!/usr/bin/env bash

# Install dependencies
apt-get install -y expect

# Install a specific version of node
n 12.18.3

# Install package.json dependencies
npm install

# Sanity-check version numbers
./node_modules/.bin/ts-node -vv

# Run a simulation of interactive REPL session
expect ./script.exp

echo "Process exited with code: $?"
echo
echo
