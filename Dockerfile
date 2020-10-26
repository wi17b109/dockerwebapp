FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package lock.json are copied
# where available (npm@5+)

Copy package*.json ./

Run npm install

# if you are building your code for production
# RUN nmpm install -- only=production

# Bundle app source

COPY . .

Expose 8080
CMD ["node","server.js"]