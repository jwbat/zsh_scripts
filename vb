#!python3
from os import getenv, chdir
from os.path import expanduser
import subprocess as sp


v     = expanduser('~/nvim-osx64/bin/nvim')
path  = expanduser('~/code/ventacity/sbg-webapp/modules/vue-ui/src')
ui    = getenv('UI')   # files to open

chdir(path)
sp.run(v + ' ' + ui, shell=True)
