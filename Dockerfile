# Step 1: Use nginx as base image
FROM nginx:alpine

# Step 2: Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy website files into nginx web directory
COPY . /usr/share/nginx/html

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start nginx
CMD ["nginx", "-g", "daemon off;"]

