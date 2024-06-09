FROM nginx:latest

# Copy the main nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the site-specific configuration
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
