#!/bin/bash

# Atualizar pacotes
echo "🔄 Atualizando pacotes..."
sudo apt-get update -y

# Instalar MySQL
echo "📦 Instalando MySQL..."
sudo apt-get install -y mysql-server

# Iniciar o serviço do MySQL
echo "⚙️ Iniciando o serviço MySQL..."
sudo systemctl start mysql

# Habilitar o MySQL para iniciar automaticamente
sudo systemctl enable mysql

# Configuração inicial do MySQL
echo "🔐 Configurando a segurança do MySQL..."
sudo mysql_secure_installation

# Exibir o status do MySQL
echo "📋 Status do MySQL:"
sudo systemctl status mysql
