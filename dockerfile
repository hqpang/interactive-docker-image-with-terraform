FROM node:16

RUN mkdir /myapp

# Create app directory
WORKDIR /myapp



COPY ./package.json /myapp/package.json
COPY ./package-lock.json /myapp/package-lock.json

RUN npm install
RUN npm install -g nodemon

RUN npm install -g socket.io

# Bundle app source

COPY . /myapp

EXPOSE 8080

CMD [ "nodemon", "app.js" ]