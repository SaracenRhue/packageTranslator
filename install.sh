#!/bin/bash

mkdir sr
cd sr
wget
wget
wget
cd

python3 sr/setup.py

echo "alias sr='python3 sr/main.py'" >> ~/.zshrc
echo "alias sr='python3 sr/main.py'" >> ~/.bashrc
source ~/.zshrc
source ~/.bashrc