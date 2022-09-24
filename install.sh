#!/bin/bash

mkdir sr
cd sr
wget https://raw.githubusercontent.com/SaracenRhue/packageTranslator/main/sr/config.yml
wget https://github.com/SaracenRhue/packageTranslator/blob/main/sr/main.py
wget https://github.com/SaracenRhue/packageTranslator/blob/main/sr/setup.py
cd

python3 sr/setup.py
rm -rf sr/setup.py

echo "alias sr='python3 sr/main.py'" >> ~/.zshrc
echo "alias sr='python3 sr/main.py'" >> ~/.bashrc
source ~/.zshrc
source ~/.bashrc