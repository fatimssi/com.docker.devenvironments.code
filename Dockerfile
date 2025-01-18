# Dockerfile
FROM node:14
# Create app directory
WORKDIR /my-app
# Install app dependencies
COPY package*.json ./
COPY . .
# Install app dependencies	
RUN npm install
# Bundle app source
EXPOSE 3000
CMD [ "node", "app.js" ]