FROM node:18.13.0-alpine3.16 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000
CMD node index.js