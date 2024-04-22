#!/bin/bash

#Script para fazer download de Drivers da Placa de video Rx580 AMD

sudo apt-get update;

sudo apt-get upgrade;

sudo apt install software-properties-common build-essential lsb-core dkms htop nmon psensor cpufrequtils cputool ipmitool ipmiutil smartmontools vainfo intel-gpu-tools mesa-opencl-icd mesa-utils-extra libegl1-mesa libgl1-mesa-glx libgles2-mesa libassimp5 ttf-mscorefonts-installer v4l-utils vim git p7zip-full p7zip-rar mesa-utils;

sudo apt install mesa-vulkan-drivers vulkan-tools libassimp5 libvulkan1;

sudo amdgpu-install --usecase=graphics,opencl --opencl=rocr,legacy --vulkan=amdvlk,pro;

sudo glxgears;
