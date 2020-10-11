
#Update S.O
sudo apt-get install update && sudo apt-get upgrade -y

# Create Folders
mkdir ~/.deb
mkdir ~/POC

# Python Install

curl https://pyenv.run | bash


# Nvm Install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash


echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo 'installing zsh-autosuggestions && zsh-syntax-highlighting'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Update
cp .zshrc ~/.zshrc


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

docker-compose --version

## Install using deb

cd ~/.deb

# Terminus
echo 'installing terminus' 
wget https://github.com/Eugeny/terminus/releases/download/v1.0.120/terminus-1.0.120-linux.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Chrome
echo 'installing chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


