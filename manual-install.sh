
#Update S.O
sudo apt-get install update && sudo apt-get upgrade -y

# Python Install
echo 'pyenv'
curl https://pyenv.run | bash

pyenv install 3.8.0
pyenv global 3.8.0
pip install --upgrade pip
pip install pipenv

# Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -


# Nvm Install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# Vim
echo 'installing vim'
sudo apt install vim -y
clear

# Docker
echo 'docker' 
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

# Docker post-install

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker 

docker run hello-world

# Docker Composer
echo 'docker-composer' 
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Lutris

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris




