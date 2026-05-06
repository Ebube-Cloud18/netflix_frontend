# Use lightweight Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN apt-get update && apt-get install -y 
RUN npm install

# Copy all project files
COPY . .

# Build React app
RUN npm run build

# Install serve package for production
RUN npm install -g serve

# Expose frontend port
EXPOSE 3000

# Serve production build
CMD ["serve", "-s", "build", "-l", "3000"]