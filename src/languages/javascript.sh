#!/usr/bin/env bash

echo "Installing nodejs and common frontend development tools..."

# download nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# set variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# update .bashrc
cat << 'END' >> ~/.bashrc

# nvm settings:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

END

# install node/npm
nvm install stable

# install npm packages
npm install -g jspm
npm install -g gulp
npm install -g grunt-cli
npm install -g bower

echo "Node, NPM, jspm, gulp, grunt and bower have been installed"
