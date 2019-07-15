git checkout master
rsync -var -del ../docs/content/ content/
hugo --verbose
rm -r public/categories/
node compress.js

# git checkout gh-pages
# rsync -var public/ .
