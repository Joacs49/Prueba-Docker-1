# 🚀 Mi primera prueba con Docker

¡Bienvenido a mi primera prueba usando **Docker**!  
Este proyecto levanta un contenedor con **Nginx** para servir una página web simple.

---

## 📂 Estructura del proyecto

├─ Dockerfile
└─ pruebas-docker-1/
└─ index.html


- **Dockerfile** → define la imagen personalizada basada en Nginx.  
- **pruebas-docker-1/** → carpeta que contiene los archivos HTML que servirá el contenedor.

---

## 🐳 Dockerfile

```dockerfile
FROM nginx:latest
COPY pruebas-docker-1 /usr/share/nginx/html
FROM nginx:latest → usa la última imagen oficial de Nginx.

COPY pruebas-docker-1 /usr/share/nginx/html → copia los archivos locales al directorio que Nginx sirve por defecto.
```

## Cómo ejecutar el proyecto

Construir la imagen
docker build -t mi-prueba-nginx .

Levantar el contenedor
docker run -d -p 8080:80 --name mi-nginx mi-prueba-nginx

Abrir en el navegador
http://localhost:8080

¡Y listo! Verás el contenido de tu index.html servido por Nginx. 🎉

🛑 Detener y eliminar el contenedor

Para detener el contenedor:
docker stop mi-nginx

Para eliminarlo:
docker rm mi-nginx
