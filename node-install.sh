#!/bin/bash

touch ~/node-setup-output.txt

#NVM:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.nvm/nvm.sh
source ~/.profile
source ~/.bashrc
echo "NVM installed. Version:" | tee -a ~/node-setup-output.txt
nvm --version | tee -a ~/node-setup-output.txt
echo 'You can check this is the latest release by comparing it to: https://github.com/nvm-sh/nvm - under "Releases".'  | tee -a ~/node-setup-output.txt

# Node:
nvm install --lts
echo "Node installed. Version:" | tee -a ~/node-setup-output.txt
node -v | tee -a ~/node-setup-output.txt
echo 'You can check this is the latest release by comparing it to: https://nodejs.org/en/download.'  | tee -a ~/node-setup-output.txt

# NPM:
npm install -g npm@latest
echo "NPM installed. Version:" | tee -a ~/node-setup-output.txt
npm -v | tee -a ~/node-setup-output.txt
echo 'You can check this is the latest release by comparing it to: https://github.com/npm/cli - under "Releases".'  | tee -a ~/node-setup-output.txt
source ~/.bashrc # Refresh terminal one last time
