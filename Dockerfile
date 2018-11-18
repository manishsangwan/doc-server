FROM node:8.9.4

# Install Default Text Editor
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


# Bundle app source
COPY . /usr/src/app
RUN npm install

EXPOSE 3000

CMD [ "npm", "start",  "index.js"]