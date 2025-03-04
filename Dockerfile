# Use an official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx index page and replace it with our HTML file
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]