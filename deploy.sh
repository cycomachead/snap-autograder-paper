#!/bin/bash
set -e # exit with nonzero exit code if anything fails

BRANCH=deploy-pages
git fetch origin
git checkout -b ${BRANCH} origin/gh-pages

# inside this git repo we'll pretend to be a new user
git config --global user.name "Michael Ball (TRAVIS-CI)"
git config --global user.email "cycomachead@gmail.com"

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
mv out/* .
git add .
git commit -m "Deploy from Travis CI at: `date` (CI Time)"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
git push --force "https://${GH_TOKEN}@github.com/cycomachead/snap-autograder-paper.git" ${BRANCH}:gh-pages > /dev/null 2>&1

# Cleanup...is this necessary?
git checkout master
git branch -D ${BRANCH}
