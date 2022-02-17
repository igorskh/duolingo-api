mkdir -p public

FILES="complete-swagger-*.yaml"
for f in $FILES
do
    echo "Processing $f file..."
    npx redoc-cli bundle $f
    mv redoc-static.html public/$f.html
done