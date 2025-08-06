🚀 Mi primera prueba con Docker
Este proyecto levanta un contenedor Nginx que muestra una página web simple.
   
🐳 Dockerfile

dockerfile
FROM nginx:latest
COPY pruebas-docker-1 /usr/share/nginx/html

▶️ Cómo usarlo

Construir la imagen
docker build -t mi-prueba-nginx .

Ejecutar el contenedor
docker run -d -p 8080:80 --name mi-nginx mi-prueba-nginx

Abrir en el navegador
http://localhost:8080

🛑 Detener el contenedor
docker stop mi-nginx
docker rm mi-nginx
