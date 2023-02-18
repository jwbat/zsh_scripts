#! python3
import os
import sys
import subprocess as sp


v     = os.path.expanduser('~/nvim-osx64/bin/nvim')
path  = os.path.expanduser('~/code/ventacity/sbg-webapp/modules/vue-ui/src')
ui    = os.getenv('UI')  # files to open

os.chdir(path)
sp.run(v + ui, shell=True)
