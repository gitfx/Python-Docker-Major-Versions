# GET /README.md

echo "# Python Docker image major versions"

wget -q https://registry.hub.docker.com/v1/repositories/python/tags -O - | jq ".[].name" | perl -nle 'print "* $1" if /^"(\d+\.[\d+\.?]+)"/'
