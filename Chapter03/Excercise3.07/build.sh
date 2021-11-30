set -ex
USER=cjaviersaldana
SERVICENAME=basic-app
version=`cat VERSION`
echo "version: $version"
docker build -t $USER/$SERVICENAME:$version . -f Dockerfile.02