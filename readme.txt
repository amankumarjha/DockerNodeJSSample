sudo apt install docker
docker -v
docker ps
systemctl --user start docker-desktop
docker ps
docker run hello-world
docker images

#To initializer Dockerfile
docker init
#To build from Dockerfile
docker compose up --build

#To run without building from Dockerfile
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
