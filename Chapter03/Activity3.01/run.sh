
docker run -d -p 5000:5000 --restart=always --name registry registry

chmod +x ./build.sh

./build.sh localhost:5000 activity 1.0.0