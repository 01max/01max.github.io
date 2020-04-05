#!/bin/sh

read -p "Deployment commit message : " commit_message

./build.sh

git add .
git commit -am "$commit_message"
git push origin
