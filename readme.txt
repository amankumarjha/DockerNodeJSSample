#To install docker
sudo apt install docker

#To view docker version
docker -v

#To start docker
systemctl --user start docker-desktop

#To list all running containers
docker ps

#Sample hello world from docker
docker run hello-world

#To list all images
docker images

#To initialize Dockerfile
docker init

#To build image from Dockerfile
docker compose up --build
#Now open your browser at localhost:3000 to view the site

#To run without building images from Dockerfile
docker compose up
#To stop the container
docker compose down
 
#To view all stopped container
docker ps --filter status=exited -q

#To open bash inside a container
docker exec -it <container-name-or-id> bash

#To remove all stopped container
docker rm $(docker ps --filter status=exited -q)

#To remove everything
docker system prune -a

#To stop docker
systemctl --user stop docker-desktop
