
# coding: utf-8

# In[125]:

import threading
threading.stack_size(0x2000000)

import os
import re
import pandas as pd

directory = os.getcwd()   # setting working directory



# In[134]:


names = os.listdir(directory)
names = [x for x in names if re.match(r".+.tab", x)]
print(len(names), "files in the directory")
#print(directory)


# In[128]:


with open(names[0], 'r') as f1:
    lines = [x.strip() for x in f1.readlines()]
    #print(len(lines)/2)
    col_names = [x for x in range(int(len(lines)/2))]
df = pd.DataFrame({'Names':col_names})
#print(df)


# In[130]:


o = 0
for file in names:
    #print(file)
    with open(file, 'r') as f:
        line = f.readline()
        col = []
        while len(line) > 0:
            line_str = line.split()
            #print(line_str)
            if len(line_str) > 2:
                col.append(line_str[1])
            line = f.readline()
    o += 1
    #print(o)
    #print(file)
    #print(col)
    df[file.split("#")[1][1:-22]] = col
#print(df.bottom())


# In[133]:



#print(df)
df.to_csv("merged.tab", sep='\t')
print("All", len(names), "rows were saved into merged.tab file")
print("End!")

