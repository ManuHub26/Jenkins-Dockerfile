FROM nginx:latest
RUN sed -i 's/nginx/manu/g' /usr/share/nginx/html/index.html
EXPOSE 80