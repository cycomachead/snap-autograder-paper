#!/bin/bash
set -e # exit with nonzero exit code if anything fails

git fetch origin
git checkout -b gh-pages origin/gh-pages

# inside this git repo we'll pretend to be a new user
git config --global user.name "Michael Ball (TRAVIS-CI)"
git config --global user.email "cycomachead@gmail.com"

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
time=`date`
mv out/* .
git add .
git commit -m "Deploy from Travis CI at: ${TIME} (Travis Instance Time)"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
git push --force "https://${GH_TOKEN}@github.com/cycomachead/snap-autograder-paper.git" master:gh-pages > /dev/null 2>&1

