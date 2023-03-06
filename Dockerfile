# Use an official Python runtime as a parent image
FROM python

# Set the working directory to /app
WORKDIR /app

# Install Apache HTTP Server
RUN apt-get update && apt-get install -y apache2

# Expose port 80 for incoming traffic
EXPOSE 80

# Set the default command to start Apache HTTP Server
CMD ["apache2ctl", "-D", "FOREGROUND"]
