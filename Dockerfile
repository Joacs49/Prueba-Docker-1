FROM nginx:latest

# Path: /usr/share/nginx/html
COPY /prueba-docker-1 /usr/share/nginx/html

# docker build -t miimagen pruebas-docker-1
# docker run -it --rm -d -p 8070:80 --name web sitioweb