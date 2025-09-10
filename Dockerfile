# Use official nginx image
FROM nginx:alpine

# Copy website files to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

