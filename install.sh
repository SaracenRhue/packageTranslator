#!/bin/bash

mkdir sr_data
cd sr_data
wget https://raw.githubusercontent.com/SaracenRhue/packageTranslator/main/sr/config.yml
wget https://raw.githubusercontent.com/SaracenRhue/packageTranslator/main/sr/main.py
wget https://raw.githubusercontent.com/SaracenRhue/packageTranslator/main/sr/setup.py
cd

python3 sr_data/setup.py
rm -rf sr_data/setup.py

echo "alias sr='python3 sr_data/main.py'" >> ~/.zshrc
echo "alias sr='python3 sr_data/main.py'" >> ~/.bashrc
source ~/.zshrc
source ~/.bashrc