#!/bin/bash

echo 'This script will run commands that are often needed when starting'
echo 'a new Node project'
echo ''

# Checks if package.json exists in the working directory
fileExists=false
for filename in *
do
  if [ $filename == 'package.json' ]
  then
    fileExists=true
    break;
  fi
done

# No package.json? - run npm init
# package.json? - run node install
if [ $fileExists -eq false ]
then
  npm init
fi

# Install dev dependencies
npm install --save-dev mocha chai supertest sinon eslint

# Install dependencies
npm install --save express morgan cors body-parser

# Init ESLint
npx eslint --init

# Install all dependencies locally
npm install
