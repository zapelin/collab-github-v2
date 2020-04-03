#!/bin/bash

git checkout master

echo some_file > some_file_master
git add some_file_master
echo 1 > file123
git add file123
git commit -m init

git push

git checkout -b feature


## upstream changes
git checkout master

#echo 4 >> file123
#git commit -a -m master_4

git rm file123
git commit -m master_remove_file123

echo some_change >> some_file_master
git add some_file_master
git commit -m some_file_master_commit

git push


## feature changes
git checkout feature

echo 2 >> file123
git add file123
git commit -m feature_2

#echo 3 >> file123
#git add file123
#git commit -m feature_3

#echo change_to_file >> another_file_feature
#git add another_file_feature
#git commit -m another_file_feature_commit

#it merge --no-ff master

#git push -u origin feature

echo "#"
echo "now you can create pull request feature -> master"
echo "#"
