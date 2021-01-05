#!/bin/bash

echo 'This script will run commands that are often needed when starting'
echo 'a new Node project'
echo ''

# # Checks if package.json exists in the working directory
if [ -f './package.json' ]
then
  # package.json? - run npm install
  npm install
else
  # No package.json? - run npm init
  npm init
fi

# Install dev dependencies
npm install --save-dev mocha chai supertest sinon eslint

# Install dependencies
npm install --save express morgan cors body-parser

# Init ESLint
npx eslint --init
