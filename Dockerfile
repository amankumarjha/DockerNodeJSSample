# syntax=docker/dockerfile:1

ARG NODE_VERSION=20

FROM node:${NODE_VERSION}-alpine

# Use development node environment by default.
ENV NODE_ENV development

WORKDIR /usr/src/DockerNodeJSSample
RUN npm init -y
RUN npm install express body-parser mongoose web3 nodemailer

COPY . .

CMD node src/app.js