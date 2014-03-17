#!/bin/bash

verstat generate
( cd out
  url=$(git config remote.origin.url)
  lastCommit=$(git log --oneline | head -n 1)
  git init
  git add .
  git commit -m "$lastCommit"
  git push --force $url master:gh-pages
)