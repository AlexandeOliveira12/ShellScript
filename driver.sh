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

# Baixando e instalando os drivers AMD para RX580
echo "Baixando e instalando os drivers da placa de vídeo AMD RX580..."
wget https://drivers.amd.com/drivers/linux/amdgpu-pro-22.40-1234567-ubuntu-20.04.tar.xz -O /tmp/amdgpu-pro.tar.xz

# Descompactando o arquivo de drivers
echo "Descompactando drivers..."
tar -xf /tmp/amdgpu-pro.tar.xz -C /tmp

# Instalando os drivers
echo "Instalando drivers..."
cd /tmp/amdgpu-pro-22.40-1234567-ubuntu-20.04
sudo ./amdgpu-pro-install --usecase=graphics,opencl --opencl=rocr,legacy --vulkan=amdvlk,pro

# Verificando a instalação
echo "Verificando a instalação dos drivers..."
sudo glxgears

echo "Instalação concluída!"
