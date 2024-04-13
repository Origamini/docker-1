# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package list and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the sample HTML file into the container
COPY index.html /var/www/html/index.html

# Automatically start Apache2 when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]

# Expose port 80 to make it accessible outside the container
EXPOSE 80
