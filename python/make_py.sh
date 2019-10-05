apt-get install jupyter-core
apt install jupyter
pip3 install virtualenv 

# See aliases in .bashrc
# Making virtualenvs
#virtualenv ~/.pyenvs/py27 --python=/python2.7.1rc5
virtualenv ~/.pyenvs/py36
virtualenv ~/.pyenvs/py_webdev
virtualenv ~/.pyenvs/py_data

source ~/.pyenvs/py_webdev/bin/activate
pip install -r webdev.txt
deactivate

source ~/.pyenvs/py_data/bin/activate
pip install -r data_science.txt
deactivate

apt install ipython3
