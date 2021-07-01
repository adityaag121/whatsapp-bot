FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install && apt update && apt install libnss
COPY . .
RUN npm start
EXPOSE 3000
