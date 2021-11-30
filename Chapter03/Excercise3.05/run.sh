docker ps

docker pull busybox

docker images | grep busybox

docker tag busybox new_busybox:ver_1

docker tag new_busybox:ver_1 cjaviersaldana/new_busybox:ver_2

# docker images

echo "FROM new_busybox:ver_1" > /workspaces/The-Docker-Workshop-Practice/Chapter03/Excercise3.05/Dockerfile

docker build -t built_image:ver_1 .

docker history built_image:ver_1




