# # Use an official Python runtime as a parent image
# FROM python

# # Set the working directory to /app
# WORKDIR /app

# # Install Apache HTTP Server
# RUN apt-get update && apt-get install -y apache2

# # Expose port 80 for incoming traffic
# EXPOSE 80

# # Set the default command to start Apache HTTP Server
# CMD ["apache2ctl", "-D", "FOREGROUND"]


# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
