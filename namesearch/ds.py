tldfile = 'tlds.txt'
namefile = '2syllable.txt'

with open(tldfile) as f:
    tlds = [line.rstrip('\n') for line in f]

with open(namefile) as f:
    names = [line.rstrip('\n') for line in f]


for name in names:
    name = name.replace('_', '')
    for tld in tlds:
        if name.lower().endswith(tld.lower()):
            print(name, tld)

