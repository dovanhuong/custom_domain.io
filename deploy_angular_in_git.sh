#!/bin/bash
ng build --prod
echo "Completed build Angular production"
git init 
git add .
git commit -m "first commit"
git branch -M main
git remote add origin $1
git push -u origin main
echo "Completed push source into git URL"
git branch gh-pages
git checkout gh-pages
git push origin gh-pages
echo "Completed push source into gh-pages branches"
ng add angular-cli-ghpages
echo "Completed add Angular CLI of gh-pages"
ng build --prod
echo "Completed build again Angular productions"
ng deploy --base-href=$2
echo "Completed deploy source into $2"
