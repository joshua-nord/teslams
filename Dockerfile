FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/teslams
WORKDIR /usr/src/teslams

# Install app dependencies
COPY package.json /usr/src/teslams/
RUN npm install

# Bundle app source
COPY . /usr/src/teslams

EXPOSE 3000

ENTRYPOINT [ "npm", "run" ]
CMD [ "streaming" ]
