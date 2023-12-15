# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./dist/main /app

# Make port 80 available to the world outside this container
EXPOSE 8000

# Run the app when the container launches
CMD ["./main"]