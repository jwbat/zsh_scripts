#! python
from json import load, dump
from time import sleep
from os import listdir, getcwd, getenv
from os.path import join, expanduser, exists
from pathlib import Path
import subprocess as sp
from rich.console import Console
from rich.markdown import Markdown
import argparse



def parse_arguments():
    parser = argparse.ArgumentParser(description='')
    parser.add_argument('-a', '--auto', action='store_true', help='rifle thru files on auto-pilot')
    return parser.parse_args()


def is_markdown(f):
    sfx = Path(f).suffix
    return sfx == '.md' or sfx == '.markdown'


home  = getenv('HOME')
fpath = join(home, 'state.json')
cwd   = getcwd()
files = [file for file in listdir(cwd) if is_markdown(file)]
N     = len(files)
state = dict()


def show_md(file):
    sp.run('clear')
    with open(join(cwd, file)) as f:
        content = f.read()
    Console().print(Markdown(content))


def get_state():
    if exists(fpath):
        with open(fpath, 'r') as f:
            state.update(load(f))


def store_state():
    with open(fpath, 'w') as f:
        dump(state, f, indent=4)


def rifle_through(files):
    n = 0
    while True:
        show_md(files[n])
        n = (n + 1) % N
        sleep(1)


def show_next_markdown(files):
    get_state()
    n = state.get(cwd, 0)
    file = join(cwd, files[n])
    state[cwd] = (n + 1) % N
    store_state()
    show_md(file)



args = parse_arguments()
auto = args.auto
if auto:
    rifle_through(files)
else:
    show_next_markdown(files)
