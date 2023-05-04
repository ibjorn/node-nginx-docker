
# pull the Node.js Docker image
FROM node:alpine


RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# create the directory inside the container
WORKDIR /home/node/app

# copy the package.json files from local machine to the workdir in container
COPY --chown=node:node package*.json ./

USER node

# run npm install in our local machine
RUN npm install

# copy the generated modules and all other files to the container
COPY --chown=node:node . .

# our app is running on port 5000 within the container, so need to expose it
EXPOSE 8080

# the command that starts our app
CMD ["npm", "run", "dev"]