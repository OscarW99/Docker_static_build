FROM debian:latest

# Install nginx
RUN apt-get update && apt-get install -y nginx

# Copy the web page code into the docker container
COPY html/ /var/www/html/

# Create a symlink for os-release in the web directory
RUN ln -s /etc/os-release /var/www/html/os-release

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
# Runs 'nginx -g daemon off;'