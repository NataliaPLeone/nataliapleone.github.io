#!/bin/bash

echo -e "\033[0;32mDeployment: Building site...\033[0m"
hugo

echo -e "\033[0;32mDeployment: Committing changes...\033[0m"
cd public
git init
git add .
git commit -m "Deploy to GitHub Pages"

echo -e "\033[0;32mDeployment: Pushing to GitHub...\033[0m"
git remote add origin "https://github.com/NataliaPLeone/NataliaPLeone.github.io"
git push -f origin master