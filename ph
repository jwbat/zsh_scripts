#! python

# Description
# parse MS patch names to human-readable 

# Usage
# pa <name>
from sys import argv

'''
    arg                                                     return
    -------------------------------------------------------------------------------------
    WT201.0000.0200.0101-WT201.0000.0200.0102.patch         1_1_to_1_2
    WT201.0000.0200.0101-WT201.0000.0200.0103.patch         1_1_to_1_3
    WT201.0000.0200.0102-WT201.0000.0200.0103.patch         1_2_to_1_3
'''

def parse(name):
    if name.endswith('.patch'):
        s = 'wt201_delta'
        parts = name.split('.')
        v1 = parts[3].split('-')[0].replace('0', '_')[1:]
        v2 = parts[-2].replace('0', '_')
        return f'{v1}_to{v2}'
    else:
        print('supply one or more WT201 patch file names to parse or go elsewhere.')
        exit()


def do_that(fnames):
    print()
    for fname in fnames:
        print(fname, '\t', parse(fname))
    print()



if __name__ == '__main__':
    do_that(argv[1:])
