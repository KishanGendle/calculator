# Use lightweight nginx image to serve the static calculator app
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy all static assets into nginx's serve directory
COPY index.html style.css calc.js favicon.png heart.png meta.jpg /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]