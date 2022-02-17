rm -rf public
mkdir -p public
cp public_template.html public/index.html

FILES="complete-swagger-*.yaml"
for f in $FILES
do
    echo "Processing $f file..."
    npx redoc-cli bundle $f
    mv redoc-static.html public/$f.html
done