# To run this project

## To install docker

sudo apt install docker

## To view docker version

docker -v

## To start docker

systemctl --user start docker-desktop

## To list all running containers

docker ps

## Sample hello world from docker

docker run hello-world

## To list all images

docker images

## Replace dockernodejssample & DockerNodeJSSample with your project name as required

## To build image first remove all files and folders from current directory except 3 files; Dockerfile, README.md & src/app.js, then run below command

docker build --progress=plain --tag dockernodejssample:0.1 --file Dockerfile .

## To start the project

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 --rm -it --entrypoint /bin/sh dockernodejssample:0.1
pwd
npm init -y
npm install express body-parser mongoose web3 nodemailer

## Don't run below first line in production

npm install --save-dev cors nodemon
exit

## To run the proejct in development

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 --rm -it --entrypoint /bin/sh dockernodejssample:0.1
pwd
ls -lt
npm run env -- nodemon --legacy-watch src/app.js

## To run the proejct in production

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --workdir /usr/src/DockerNodeJSSample --publish 5000:5000 dockernodejssample:0.1 node src/app.js

## Now open your browser at localhost:5000 to view the site
