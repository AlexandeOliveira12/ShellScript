#!/bin/bash

# Instalar o Bleachbit
echo "🧹 Instalando o Bleachbit..."
sudo apt-get install -y bleachbit

# Executar a limpeza como root
echo "🧽 Limpando arquivos temporários..."
sudo bleachbit --clean

# Executar a limpeza para o usuário atual
echo "🧹 Limpando arquivos temporários do usuário..."
bleachbit --clean

# Exibir um aviso ao usuário
echo "✅ Limpeza concluída!"
