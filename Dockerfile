FROM ubuntu

# Install necessary packages
#============================
RUN apt-get update && apt-get install -y 
RUN apt install nodejs -y
RUN apt install npm -y

# Set the working directory
WORKDIR /app

# Copy source files and package.json
COPY axiosConfig.js /app/src/api/axiosConfig.js
COPY ./src /app/src
COPY ./package.json /app

# Build the application
RUN npm install
RUN npm start
# Copy the built JAR file to the container


EXPOSE 3000

#ENTRYPOINT ["java", "-jar", "app.jar"]