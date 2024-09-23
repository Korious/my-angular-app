# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Copy the rest of the application code
COPY . .

# Build the Angular app
RUN yarn install --production

# Expose the port the app runs on
EXPOSE 4000

# Start the application
CMD ["npm", "start"]

#23-9-24