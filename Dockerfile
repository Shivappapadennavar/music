FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy project files
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY javascript/ /usr/share/nginx/html/javascript/

EXPOSE 80
