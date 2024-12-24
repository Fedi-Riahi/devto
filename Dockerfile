# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy source files
COPY . .

# Build the project
RUN npm run build

# Expose the port (choose your desired port, e.g., 3000)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
