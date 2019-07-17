git checkout master
hugo --verbose
rm -r public/categories/
rm -r public/tags/
rm -r public/readme/
node compress.js

# git checkout gh-pages
# rsync -var public/ .
