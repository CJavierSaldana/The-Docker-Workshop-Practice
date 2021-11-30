docker pull alpine:latest
docker tag alpine:latest myapline:latest

docker save -o alpine.tar myapline:latest

du -h alpine.tar

docker image prune -f -a

docker load -i alpine.tar

docker images myapline:latest

