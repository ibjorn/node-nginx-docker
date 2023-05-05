FROM node:alpine

<<<<<<< HEAD
RUN apt-get -y update
RUN apt-get -y install git
=======
USER root

RUN apk add --no-cache git
>>>>>>> temp

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node /app/package*.json ./

USER node

RUN npm install

COPY --chown=node:node ./app .

EXPOSE 80 8080 3000 5000

# CMD ["npm", "run", "dev"]