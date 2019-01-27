# This script gets the geckodriver for Firefox
# and installs it. Must run as root!

cd ~/Downloads

wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz

tar -xvzf geckodriver*

chmod +x geckodriver

mv geckodriver /usr/local/bin/

rm geckodriver*

geckodriver --version
