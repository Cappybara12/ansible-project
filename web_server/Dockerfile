# Use a base image
FROM ubuntu:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y nginx

# Copy custom nginx configuration if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web files (e.g., HTML, PHP) into the container
COPY www /var/www/html

# Expose HTTP port
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]


