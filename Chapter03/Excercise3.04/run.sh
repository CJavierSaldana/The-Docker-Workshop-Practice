# using the scratch image
docker pull scratch

# if you dont have the c compiler, you can use the following
sudo apt install g++

# tool to compile the c code
g++ -o test -static ./test.c

# create the image
docker build -t scratch-test .

# run 
docker run -it scratch-test

# reviweing the history of the image
docker history scratch-test

docker image ls