#!/bin/bash

sudo apt-get install git;

git clone https://github.com/dominilux/amdgpu-pro-fans;

cd amdgpu-pro-fans;

chmod +x amdgpu-pro-fans.sh;

sudo ./amdgpu-pro-fans.sh -s 95;