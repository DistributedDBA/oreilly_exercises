#!/bin/bash

# Ensure pyenv dependencies
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# Install pyenv
curl https://pyenv.run | bash

tee -a ~/.bashrc <<EOF
export PATH="\$HOME/.pyenv/bin:\$PATH"
eval "\$(pyenv init --path)"
eval "\$(pyenv init -)"
EOF

exec "$SHELL"

pyenv install -v 3.8.10
pyenv global 3.8.10

# Install ansible
pip install ansible