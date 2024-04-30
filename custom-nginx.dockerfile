# This line below states we will base our new image on the latest official image
FROM ubuntu:latest

# Identify the maintainer of the image
LABEL version="1.0.0"
LABEL maintainer="pyarelflouzia3737@gmail.com"

# Update the image to latest packages
RUN apt-get update
RUN apt-get upgrade -y

# Install NIGINX to test
RUN apt-get install nginx -y

# Expose port 80
EXPOSE 80

# Last is the actual command to start up nginx within our container
CMD ["nginx", "-g", "daemon off;"]