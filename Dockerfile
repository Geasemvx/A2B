FROM nginx:alpine

# Copy EVERYTHING (HTML + CSS + JS)
COPY . /usr/share/nginx/html

# Rename Home.html to index.html
RUN mv /usr/share/nginx/html/Home.html /usr/share/nginx/html/index.html

# Use Render port
RUN sed -i 's/listen       80;/listen 10000;/' /etc/nginx/conf.d/default.conf

EXPOSE 10000
