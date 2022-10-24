import math


#Insert any collection of documents here
corpus = ['The hotel and the stay were great',
          'This was a great stay',
          'Great stay in a great destination',
          'Great destination']


corpus2= [
      'this is the first document',
      'this document is the second document',
      'and this is the third one',
      'is this the first document'] 


#TF-IDF 
class Vspace:
    def __init__(self,collection):              #constructor, checks for lowercase and vocab length
        self.collection=collection
        self.chklower()        
        self.chklength()
        
        
    def chklength(self):
        v_max=sorted(idf)
        if len(v_max) > 10:
            v_max.pop

        
    
    def chklower(self):
        for i in self.collection:
            if i.islower() is False:
                print("This document needs to be lowercased.")
                

    
    
    def fit(self):                                             #fits vocab from docs collection
        lowercor=[s.lower() for s in self.collection]
        splitcor=[s.split() for s in lowercor]
        onecor=[k for i in splitcor for k in i]
        vocab = []
        idf={}
        tf={} 

        for i in onecor:
            if not i in vocab:
                vocab.append(i)
        print("This is the vocabulary:")
        print(vocab)


        for item in onecor:
            N=len(self.collection)
            count=onecor.count(item)
            idf[item]=(math.log((1+N)/(count+1))+1)
        print("These are the idf values:")
        print(idf)

        
        
        for i in splitcor:
            for term in i:
                cterm=i.count(term)
                tf[term]= cterm / len(i)
        print("These are the tf values:")
        print(tf)

        
    def transform(self):                                     #this needs to feed from fit() variables and doesnt
        l=[[i] for i in self.collection]
        for doc in l:
            for item in doc:
                if item in vocab:
                    pass
      

        

col1=Vspace(corpus2)

col1.fit()
col1.transform()
