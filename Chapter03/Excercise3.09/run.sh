docker pull alpine:latest
docker tag alpine:latest try-ansible:latest
docker tag try-ansible:latest cjaviersaldana/try-ansible:latest
docker tag cjaviersaldana/try-ansible:latest cjaviersaldana/try-ansible:1.0
docker push cjaviersaldana/try-ansible:latest
docker push cjaviersaldana/try-ansible:1.0