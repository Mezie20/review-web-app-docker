## using Nodejs base image
FROM node:latest

## defining working directory
WORKDIR /app

## using the root user to execute the container image
USER root

## copying he Nodejs dependency file
## for thr drstination you van use . or /app/ because the file is in your WORKDIR in your container. # COPY package.json . or COPY . . 
COPY package.json .

## installing npm for nodejs
RUN npm install

## copying all application files to the workdir # COPY . /app or COPY . .
COPY .  /app/

## exposing port number
EXPOSE 80

## executing web application - /app/server.js 
CMD [ "node", "server.js" ]
