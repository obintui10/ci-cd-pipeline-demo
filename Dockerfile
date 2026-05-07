# Use an official Nginx image from Docker Hub
FROM nginx:alpine

LABEL maintainer="Obi Ayuk Ntui <obintui368@gmail.com>"

# Copy the entire app folder into Nginx HTML directory
COPY my-app/ /usr/share/nginx/html/

# Expose port 80 so that the web server can be accessed externally
EXPOSE 80

# Add a simple health check
HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
