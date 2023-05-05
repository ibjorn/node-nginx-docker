FROM node:alpine

USER root

RUN apk add --no-cache git

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node /app/package*.json ./

USER node

RUN npm install

COPY --chown=node:node ./app .

EXPOSE 80 8080 3000 5000

# CMD ["npm", "run", "dev"]