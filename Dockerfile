# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the Angular CLI
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Angular application
RUN npm run build:ssr

# Expose the port the app runs on
EXPOSE 4000

# Command to run the application
CMD ["npm", "run", "serve:ssr"]
