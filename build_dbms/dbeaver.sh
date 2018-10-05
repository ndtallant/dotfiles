# Dependencies
apt-get install mime-support
apt install desktop-file-utils
apt-get install gnome-menus

# dbeaver
temp_deb="$(mktemp)" &&
wget -O "$temp_deb" 'https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb' &&  
sudo dpkg -i "$temp_deb"
rm -f "$temp_deb"
