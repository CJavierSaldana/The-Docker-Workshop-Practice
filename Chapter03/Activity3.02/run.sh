
chmod +x ./build.sh


sudo mkdir /home/test_registry

docker image prune -f -a

docker run -d -p 5000:5000 --restart=always --name registry --volume /home/test_registry:/var/lib/registry registry

./build.sh localhost:5000 activity 1.0.0

docker pull localhost:5000/activity:1.0.0
