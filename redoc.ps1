# Remove 'public' directory if it exists
Remove-Item -Recurse -Force public -ErrorAction SilentlyContinue

# Create 'public' directory
New-Item -ItemType Directory -Force -Path public | Out-Null

# Copy the template HTML file
Copy-Item public_template.html public\index.html

# Get all files matching the pattern
$files = Get-ChildItem -Path . -Filter 'complete-swagger-*.yaml'

foreach ($f in $files) {
    Write-Host "Processing $($f.Name) file..."
    npx @redocly/cli build-docs $f.FullName
    Move-Item redoc-static.html "public\$($f.Name).html" -Force
}