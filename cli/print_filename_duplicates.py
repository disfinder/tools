import os
import argparse
import logging
from collections import defaultdict

parser = argparse.ArgumentParser(description='Upload photos to Google Photos.')
file_group = parser.add_argument_group()
file_group.add_argument('root_dir', metavar='root_dir',
                        help='Root directory with subfolders to process.')

args=parser.parse_args()
root_dir = os.path.expanduser(args.root_dir)

data=defaultdict(list)

logging.basicConfig(level=logging.DEBUG)
for path, subdirs, files in os.walk(root_dir):
    for file in files:
        data[file].append(path)
        # logging.debug(file)
    # logging.debug(path)


for key, value in data.items():
    if len(value)>1:
        print("{} have {} entries:".format(key, len(value)))
        for path in value:
            print("\t{}".format(path))