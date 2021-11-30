
docker pull registry

docker run -d -p 5000:5000 --restart=always --name registry registry

docker pull alpine 
docker tag alpine localhost:5000/myapline:1.0
docker push localhost:5000/myapline:1.0

docker pull localhost:5000/myapline:1.0