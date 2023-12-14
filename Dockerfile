# stage1 as builder
FROM node:18.16-alpine as builder


# Set working directory
WORKDIR /app


# install node modules and build assets
COPY package*.json ./

RUN npm install
# Copy all files from current directory to working dir in image
COPY . .

EXPOSE 3000 80

CMD "npm" "run" "start"