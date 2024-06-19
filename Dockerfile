# Use the official NGINX image as the base image
FROM nginx:latest

# Remove the default NGINX configuration file
RUN rm /etc/nginx/nginx.conf

# Copy your custom nginx.conf to replace the default one
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your custom nginx.html
COPY index.html /etc/nginx/html/index.html

# Expose port 80 to allow external access
EXPOSE 80

# Command to run NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
