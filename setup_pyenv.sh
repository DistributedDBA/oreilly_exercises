#!/usr/bin/env bash

# Ensure pyenv dependencies
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# Install pyenv
$(curl https://pyenv.run | bash)

tee -a ~/.bashrc <<EOF
export PATH="\$HOME/.pyenv/bin:\$PATH"
eval "\$(pyenv init --path)"
eval "\$(pyenv init -)"
EOF

# Enable gce service
gcloud services enable compute.googleapis.com
