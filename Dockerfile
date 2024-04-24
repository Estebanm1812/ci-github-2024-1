# Use Node.js as the base image
FROM node:latest as build

WORKDIR /app

COPY . /app/
# Install dependencies
RUN npm install

RUN npm run build
CMD ["npm", "run" ,"dev"]
# Build the React app

#RUN  npm start
EXPOSE 3000

