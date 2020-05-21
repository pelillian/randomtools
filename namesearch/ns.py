import numpy as np

SYLLABLE1 = 'data/1syllable.txt'
SYLLABLE2 = 'data/2syllable.txt'


def load_list(filename):
    with open(filename) as f:
        names = [line.rstrip('\n') for line in f]
    return names

list1 = load_list(SYLLABLE1)
list2 = load_list(SYLLABLE2)

final_list = []
for name2 in list2:
    if len(name2) < 7:
        continue
    for name1 in list1:
        if len(name1) > 2 and name1.lower() in name2.lower():
            final_list.append(name2)

final_list = np.unique(final_list)
for item in final_list:
    print(item)

