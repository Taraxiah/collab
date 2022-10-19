import re


#Insert any collection of documents here
corpus = ['This is the first document.',
          'This document is the second document.',
          'And this is the third one.',
          'Is this the first document?']


#TF-IDF 
class Vspace:
    def __init__(self,v_max):
        self.v_max=v_max
        for i in v_max:
            if i in v_max.isupper():    
                return True            #boolean for caps
        if v_max > 10:        
            v_max.pop()           #truncator

    
    
    def fit(self):                      #vocab fitter
            pass



#tokenizer for corpus
lowercor=[s.lower() for s in corpus]
splitcor=[s.split() for s in lowercor]
onecor=[k for i in splitcor for k in i]
speccor=[re.sub(r"[-()\"#/@;:<>{}`+=~|.!?,]", "", s) for s in onecor]
vocab=[]
l=[]

for i in speccor:
    if not i in vocab:
        vocab.append(i)
print(vocab)

#vectorizer
def vector():
    for word in corpus:
        if word in vocab:
            l.append(1)
        else:
            l.append(0)
        continue
    print(l)

vector()        
        

        

                 
