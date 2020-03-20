#!/bin/bash

cwd="$(cd $(dirname $0) && pwd)"

echo -e "working directory: $cwd"

if [ "`git status -s`" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out master branch into public worktree directory"
git worktree add -B master public origin/master

echo "Removing existing files"
rm -rf public/*

echo "Generating site"

./hugo.sh

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to master branch for static website update" && git push origin master

echo "Done!"


