git checkout master
rsync -var -del ../docs/content/ content/
hugo --verbose
node compress.js

git checkout gh-pages
rsync -var public/ .
