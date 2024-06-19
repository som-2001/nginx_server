# Use the official NGINX image as the base image
FROM nginx:latest

# Copy your custom nginx.conf to replace the default one
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

# Copy your HTML files to the container
COPY nginx-html /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Command to run NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
