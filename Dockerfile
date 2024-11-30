# Use the official nginx base image
FROM nginx:latest

# Copy your custom configuration file, if you have one
# Assuming you have a nginx.conf in the current directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web application files, if needed
# Assuming you have a directory named 'html' with your static files
COPY html /usr/share/nginx/html

# Expose the default nginx port
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
