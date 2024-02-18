# To install docker
sudo apt install docker

# To view docker version
docker -v

# To start docker
systemctl --user start docker-desktop

# To list all running containers
docker ps

# Sample hello world from docker
docker run hello-world

# To list all images
docker images

# Replace dockernodejssample & DockerNodeJSSample with your project name as required. 

# To build image first remove all files and folders from current directory except 2 files; Dockerfile and how_to_builld_this_app.txt, then run below command:
docker build --progress=plain --tag dockernodejssample:0.1 --file Dockerfile . 

# To start the project
docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 npm init -y

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 npm install express body-parser mongoose web3 nodemailer

# Don't run below line in production
docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 npm install --save-dev cors nodemon

# To run the proejct in development
docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 npm run env -- nodemon --watch src src/app.js

# To run the proejct in production
docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 node src/app.js

#Now open your browser at localhost:5000 to view the site