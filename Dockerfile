FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN apt install libnss3-dev
COPY . .
RUN npm start
EXPOSE 3000
