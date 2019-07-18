hugo --verbose
rm -r public/categories/
rm -r public/tags/
rm -r public/readme/
node compress.js

# rsync --archive --compress --verbose --progress public/ ../siteHTML
