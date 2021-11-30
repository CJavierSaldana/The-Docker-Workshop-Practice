docker image prune -a -f

docker build -t basic-base -f ./Dockerfile.01 .

image_name=$(git log -1 --format=%h)
docker build -t basic-base:$image_name -f ./Dockerfile.01 .
docker tag  basic-base:$image_name basic-base:latest

docker save basic-base:latest -o Dockerfile.tar.gz

random_value=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
image_name=$(git log -1 --format=%h)-$random_value
docker build -t basic-app:$image_name --build-arg GIT_COMMIT=$image_name . -f ./Dockerfile.02
docker tag  basic-app:$image_name basic-app:latest

echo "1.0.0" > VERSION

docker inspect -f '{{index .ContainerConfig.Labels "git-commit"}}' basic-app:latest

chmod +x build.sh

./build.sh