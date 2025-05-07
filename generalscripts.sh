#!/bin/bash

# Atualiza os repositórios e pacotes
echo "🔄 Atualizando pacotes..."
sudo apt-get update && sudo apt-get upgrade -y

# Instala dependências básicas
echo "📦 Instalando pacotes essenciais..."
sudo apt install -y wget gdebi-core git python3-pip python3-tk

# Instala VS Code
echo "🖥️ Instalando Visual Studio Code..."
sudo apt install -y code

# Instala Google Chrome
echo "🌐 Instalando Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
sudo gdebi -n /tmp/chrome.deb
rm /tmp/chrome.deb

# Instala pacotes via pip
echo "🐍 Instalando pacotes Python..."

# Lista de pacotes
pip_packages=(
aiohappyeyeballs==2.6.1
aiohttp==3.11.18
aiosignal==1.3.2
altgraph==0.17.4
attrs==25.3.0
audioop-lts==0.2.1
bcrypt==4.3.0
certifi==2025.4.26
cffi==1.17.1
charset-normalizer==3.4.1
discord.py==2.5.2
docopt==0.6.2
frozenlist==1.6.0
idna==3.10
multidict==6.4.3
packaging==24.2
pefile==2023.2.7
pipreqs==0.4.13
propcache==0.3.1
pwinput==1.0.3
pycparser==2.22
pyinstaller==6.12.0
pyinstaller-hooks-contrib==2025.2
PyNaCl==1.5.0
python-decouple==3.8
pywin32-ctypes==0.2.3
requests==2.32.3
setuptools==78.1.0
urllib3==2.4.0
yarg==0.1.10
yarl==1.20.0
yt-dlp==2025.4.30
python_bcrypt==0.3.2
mysql_connector_repackaged==0.3.1
notify2==0.3.1
)

# Instala cada pacote
for package in "${pip_packages[@]}"; do
    pip3 install "$package"
done

# Informações finais
echo "✅ Todos os pacotes e programas foram instalados com sucesso!"
