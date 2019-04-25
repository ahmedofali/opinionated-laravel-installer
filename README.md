# Opinionated Laravel Installer Using Docker

## Simply Run this Command 
docker run -it --rm -v E:\sites\work\installation-directory:/app ahmedali32/laravel-installer:v1.0 /app

This Command simply will mount this partition in your host "E:\sites\work\installation-directory" to "/app" inside the container,
and you pass /app to tell the container that you would like to put the new laravel installation inside this directory which is mounted to your host partition "E:\sites\work\installation-directory" .