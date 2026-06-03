FROM nginx:alpine

# Copy your file
COPY Home.html /usr/share/nginx/html/index.html

# Configure nginx to use Render's port
RUN sed -i 's/listen       80;/listen 10000;/' /etc/nginx/conf.d/default.conf

EXPOSE 10000