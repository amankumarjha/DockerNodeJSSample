# To run this project

## Replace dockernodejssample & DockerNodeJSSample with your project name as required

## To build image for development

docker build --progress=plain --tag dockernodejssample:0.1 --file Dockerfile.dev .

## To run the proejct in development

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --publish 5000:5000 --rm dockernodejssample:0.1

## To start shell inside container

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --publish 5000:5000 --rm -it --entrypoint /bin/sh dockernodejssample:0.1

## To build the image for production

docker build --progress=plain --tag dockernodejssample-prod:0.1 --file Dockerfile .

## To run the proejct in production

docker run --volume $(pwd):/usr/src/DockerNodeJSSample --publish 5000:5000 --rm dockernodejssample-prod:0.1

## Now open your browser at localhost:5000 to view the site
