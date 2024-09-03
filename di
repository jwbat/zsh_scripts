#!/bin/zsh

# move generated static files to sister dir, deploy, and push
# (for deployment to GitHub Pages)

npm run generate
cp -r dist/* ../deploy
cd ../deploy
git add .
if [ -z "$1" ]; then
    git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"
else
    git commit -m "$1"
fi
git push


exit 0
