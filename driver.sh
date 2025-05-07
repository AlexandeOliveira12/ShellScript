#!/bin/bash

# Script para fazer download e instalação dos drivers da placa de vídeo RX580 AMD

# Atualizando os pacotes do sistema
echo "Atualizando pacotes do sistema..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Instalando dependências necessárias
echo "Instalando pacotes necessários..."
sudo apt-get install -y software-properties-common build-essential lsb-core dkms htop nmon psensor cpufrequtils cputool ipmitool ipmiutil smartmontools vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5 ttf-mscorefonts-installer v4l-utils vim git p7zip-full p7zip-rar mesa-utils

# Instalando drivers Vulkan
echo "Instalando drivers Vulkan..."
sudo apt-get install -y mesa-vulkan-drivers vulkan-tools libassimp5 libvulkan1

# Baixando o pacote .deb com os drivers AMD RX580
echo "Baixando pacote .deb para instalação dos drivers..."
wget https://repo.radeon.com/amdgpu-install/6.3.4/ubuntu/noble/amdgpu-install_6.3.60304-1_all.deb -O /tmp/amdgpu-install.deb

# Instalando o pacote .deb
echo "Instalando drivers AMD RX580..."
sudo dpkg -i /tmp/amdgpu-install.deb

# Corrigindo dependências, se necessário
echo "Corrigindo dependências..."
sudo apt-get install -f -y

# Instalando os drivers usando o amdgpu-pro
echo "Instalando drivers AMD com amdgpu-pro..."
sudo amdgpu-install --usecase=graphics,opencl --opencl=rocr,legacy --vulkan=amdvlk,pro

# Verificando a instalação
echo "Verificando a instalação dos drivers..."
sudo glxgears

echo "Instalação concluída!"
