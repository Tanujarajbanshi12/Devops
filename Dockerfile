FROM nginx:alpine
copy . /usr/share/nginx/html

Expose 80
