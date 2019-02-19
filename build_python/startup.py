'''
startup.py

This file loads up all the best stuff when using the iPython repl.

Specifically - this will look at the virtual environment setup and
load the popular modules for it.

The naming convention for venvs is 'py_env'.

Options are:
    - data
    - webdev
'''
import os

mission = 'python'
env = os.environ['VIRTUAL_ENV'].split('py_')[-1]

if env == 'data':
    import numpy as np
    import pandas as pd
    pd.options.display.max_columns = 30
    mission = 'data science'

if env == 'webdev':
    mission = 'web development'

from IPython import get_ipython
ipython = get_ipython()

if 'ipython' in globals():
    print(f'Hey Nick! Let\'s do some {mission}!')
    ipython.magic('load_ext autoreload')
    ipython.magic('autoreload 2')
