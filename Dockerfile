# syntax=docker/dockerfile:1

ARG NODE_VERSION=20

FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV production

WORKDIR /usr/src/dockernodejssample
RUN npm init -y
RUN npm install express body-parser mongoose web3 nodemailer

COPY src src
COPY index.js .

CMD node index.js