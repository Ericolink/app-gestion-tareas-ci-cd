#!/bin/bash

echo "Desplegando aplicación..."

cd ~/app-gestion-tareas-ci-cd/app

git pull origin main
npm install

pm2 restart app

echo "Despliegue listo 🚀"