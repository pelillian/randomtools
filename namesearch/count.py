import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from nltk.corpus import cmudict


CMUDICT = cmudict.dict()
UNICORNS = 'data/unicorns.txt'

def nsyl(word):
    # datascience.stackexchange.com/questions/23376/how-to-get-the-number-of-syllables-in-a-word
    try:
        return [len(list(y for y in x if y[-1].isdigit())) for x in CMUDICT[word.lower()]][0]
    except KeyError:
        #if word not found in cmudict
        return countsyl(word)

def countsyl(word):
    #referred from stackoverflow.com/questions/14541303/count-the-number-of-syllables-in-a-word
    count = 0
    vowels = 'aeiouy'
    word = word.lower()
    if word[0] in vowels:
        count +=1
    for index in range(1,len(word)):
        if word[index] in vowels and word[index-1] not in vowels:
            count +=1
    if word.endswith('e'):
        count -= 1
    if word.endswith('le'):
        count += 1
    if count == 0:
        count += 1
    return count

def hist(x):
    return np.histogram(x, bins=np.arange(1, np.max(x) + 2))

def load_list(filename):
    with open(filename) as f:
        names = [line.rstrip('\n') for line in f]
    return names

unicorns = load_list(UNICORNS)

numwords = []
numsylls = []
numchars = []
for name in unicorns:
    numchars.append(len(name))
    wordlist = name.split()
    numwords.append(len(wordlist))
    syll = 0
    for w in wordlist:
        syll += nsyl(w)
    numsylls.append(syll)

numwords, numsylls, numchars = np.array(numwords), np.array(numsylls), np.array(numchars)

#numwords_hs, numsylls_hs, numchars_hs = hist(numwords), hist(numsylls), hist(numchars)

fig, axs = plt.subplots(ncols=3)
#sns.barplot(data=numwords_hs[1], x=numwords_hs[0][:-1])
sns.countplot(numwords, ax=axs[0]).set(title='Words')
sns.countplot(numsylls, ax=axs[1]).set(title='Syllables')
sns.countplot(numchars, ax=axs[2]).set(title='Characters')
plt.show()

