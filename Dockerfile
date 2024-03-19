# Use a base image with Java installed
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the source code into the container
COPY . .

# Compile the Java source code
RUN javac Main.java

# Command to run the application when the container starts
CMD ["java", "Main"]
