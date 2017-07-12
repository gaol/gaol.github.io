#!/bin/bash

git checkout master
rm -rf _site
git rm -r *
git commit -m "clean master"

git checkout source

rm -rf _site

jekyll build

git checkout master

cp -r _site/* .

git add *
git commit -a -m "Publish articles"

read -p "Are you sure to push to remote git repository ?[y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git push origin master
fi
echo -e "Checkout back to source branch"
git checkout source
