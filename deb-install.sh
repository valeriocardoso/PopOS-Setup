## Install using deb
mkdir ~/.deb
cd ~/.deb

# Terminus
echo 'installing terminus' 
wget https://github.com/Eugeny/terminus/releases/download/v1.0.120/terminus-1.0.120-linux.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Chrome
echo 'installing chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# wps office
echo 'wps office' 
wget http://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/9662/wps-office_11.1.0.9662.XA_amd64.deb
sudo dpkg -i wps-office_11.1.0.9662.XA_amd64.deb


# steam
echo 'steam' 
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb