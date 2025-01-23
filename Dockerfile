# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm Install

# Copy the rest of the application code
COPY . .

# Expose the port your application runs on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]

