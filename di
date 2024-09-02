#!/bin/zsh

# move generated static files to sister dir, deploy, and push
# (for deployment to GitHub Pages)

npm run generate
cp -r dist/* ../deploy
cd ../deploy
git add .
git commit -m "$1"
git push


exit 0
