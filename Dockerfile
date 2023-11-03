#Use the node:10-alpine image as a base to
FROM node:10-alpine
#create a directory for the app and its node_modules with node as its owner
RUN mkdir -p /app/node_modules && chown -R node:node /app
WORKDIR /app
#install all packages in package.json
COPY package*.json ./
USER node
RUN npm install
#expose port 8080 and run the app
EXPOSE 8080
RUN npm run start
#the docker lecture will help you complete this file
#there should be a total of 9 lines
CMD ["npm", "start"]
