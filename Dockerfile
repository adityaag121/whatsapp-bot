FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install && apt-get update && apt-get install libnss
COPY . .
RUN npm start
EXPOSE 3000
