NAMEFILE = 'data/2syllable.txt'


def printnames(namefile):
    with open(namefile) as f:
        names = [line.rstrip('\n') for line in f]
    for name in names:
        name = name.replace('_', '')
        print(name)
        if 'j' in name:
            return

printnames(NAMEFILE)
