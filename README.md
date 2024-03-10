# To run this project

## Replace dockernodejssample with your project name as required

## To build image for development

docker build --progress=plain --tag dockernodejssample:0.1 --file Dockerfile.dev .

## To prepare the project for first run in new development environment

docker create --name dummy dockernodejssample:0.1
docker cp dummy:/usr/src/dockernodejssample/. $(pwd)
docker rm -f dummy

## To run the proejct in development

docker run --volume $(pwd):/usr/src/dockernodejssample --publish 5000:5000 --rm dockernodejssample:0.1

## To start shell with volume

docker run --volume $(pwd):/usr/src/dockernodejssample --rm -it --entrypoint /bin/sh dockernodejssample:0.1

## To open a shell without volume

docker run --rm -it --entrypoint /bin/sh dockernodejssample:0.1

## To build the image for production

docker build --progress=plain --tag dockernodejssample-prod:0.1 --file Dockerfile .

## To run the proejct in production

docker run --publish 5000:5000 --rm dockernodejssample-prod:0.1

## Now open your browser at localhost:5000 to view the site
