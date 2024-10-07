# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install backend dependencies
RUN npm install

# Copy backend source code
COPY . .

# Expose port (change if your app runs on a different port)
EXPOSE 5000

# Start the backend server
CMD ["npm", "start"]
