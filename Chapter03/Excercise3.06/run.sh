touch Dockerfile

docker build  -t cjavi/busybox .

docker run --rm cjavi/busybox

docker tag cjavi/busybox cjavi/busybox:1.0

docker build -t cjavi/busybox:2.0 . -f Dockerfile.02

docker run --rm cjavi/busybox

docker tag cjavi/busybox:2.0 cjavi/busybox:latest

