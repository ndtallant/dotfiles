# Install Base R
apt install r-base-core
apt install r-base-dev

# Tidyverse System Dependencies
apt install libcurl4-openssl-dev libssl-dev libxml2-dev

# RMySQL dependency
apt-get install libmysql++-dev

# Installing list of packages
Rscript package.R

# RStudio Dependencies
apt install libjpeg62
apt install libgstreamer0.10-0
apt install libgstreamer-plugins-base0.10-0
apt install shared-mime-info 
apt install hicolor-icon-theme
apt install gnome-menus
apt install desktop-file-utils
apt install mime-support

# Download and Install RStudio
temp_deb="$(mktemp)" &&
wget -O "$temp_deb" 'https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-xenial-1.1.310-amd64.deb' &&
# 'https://download1.rstudio.org/rstudio-1.0.44-amd64.deb' &&  
sudo dpkg -i "$temp_deb"
rm -f "$temp_deb"
