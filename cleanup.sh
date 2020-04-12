#!/bin/bash

git checkout master

git push -d origin upstream
git push -d origin feature

git branch -D upstream
git branch -D feature

git reset --hard 1da07bb585153bce125583e43e170b4b7b9c3008
git push -f

echo " "
echo " "
echo " "
echo " "
