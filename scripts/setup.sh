#!/bin/bash

echo "Configurando servidor..."

sudo apt update
sudo apt install -y nodejs npm git

sudo npm install -g pm2

git clone https://github.com/Ericolink/app-gestion-tareas-ci-cd.git
cd app-gestion-tareas-ci-cd/app

npm install

pm2 start index.js --name app