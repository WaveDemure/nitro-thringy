# Use an official PHP runtime as a parent image
FROM php:latest

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the HTML, PHP, and Shell script files into the container
COPY index.html /var/www/html
COPY process.php /var/www/html
COPY script.sh /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Run PHP built-in server to serve the application
CMD ["php", "-S", "0.0.0.0:80"]
