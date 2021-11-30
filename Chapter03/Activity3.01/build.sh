registry=$1
service_name=$2
version=$3

echo "registry: $registry"
echo "service_name: $service_name"
echo "version: $version"

docker build -t $registry/$service_name:$version .
docker push $registry/$service_name:$version
docker tag $registry/$service_name:$version $registry/$service_name:latest
docker push $registry/$service_name:latest