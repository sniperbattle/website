# base image
FROM node:13.10.1-alpine3.10

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . .
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

# start app
CMD ["npm", "start"]