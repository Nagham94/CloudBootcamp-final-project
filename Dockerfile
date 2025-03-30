# Use Node.js image based on Alpine Linux as a base image
FROM node:18-alpine3.17

# the working directory inside the container
WORKDIR /usr/app

# Copy package.json and package-lock.json to the working directory 
COPY package*.json /usr/app/

# Install dependencies from package.json
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Set environment variables for MongoDB connection
ENV MONGO_URI=uriPlaceholder
ENV MONGO_USERNAME=usernamePlaceholder
ENV MONGO_PASSWORD=passwordPlaceholder

# Expose port 3000 for incoming traffic
EXPOSE 3000

# command to run the application
CMD [ "npm", "start" ]