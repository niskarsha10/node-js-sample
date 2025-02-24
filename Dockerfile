FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 5000
CMD ["npm","start"]
#CMD [ "node", "server.js" ]

