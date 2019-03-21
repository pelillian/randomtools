import random
import sys

if len(sys.argv) < 2:
    print("Usage: rand_name.py names_filename")
    exit(-1)

filename  = sys.argv[1]

with open(filename) as f:
    names = [line.rstrip('\n') for line in f]

while(True):
    print(random.choice(names))
    input("Press Enter to continue...")

