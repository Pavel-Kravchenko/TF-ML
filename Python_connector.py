
# coding: utf-8

# In[2]:


import os
import re


# In[3]:


directory = os.getcwd()   # setting working directory


# In[5]:


os.chdir(directory+"/"+"train")   # scaning surroundings
names = os.listdir(directory+"/"+"train")
#print(names)


# In[8]:


files_names1 = sorted([x for x in names if re.match(r"ANDR_HUMAN.+.mfa", x)])
#print(files_names1)
print("")
print("Found", len(files_names1), ".mfa files for", "ANDR_HUMAN at all")

files_names2 = sorted([x for x in names if re.match(r"FOXA1_HUMAN.+.mfa", x)])
#print(files_names2)
print("")
print("Found", len(files_names2), ".mfa files for", "FOXA1_HUMAN at all")

files_names3 = sorted([x for x in names if re.match(r"CTCF_HUMAN.+.mfa", x)])
#print(files_names3)
print("")
print("Found", len(files_names3), ".mfa files for", "CTCF_HUMAN at all")


# In[ ]:


with open(directory + "/" + "pwm/mono/ANDR_HUMAN_mfa_files.txt", "w") as f1:
    for item in files_names1:
        #print(item)
        f1.write("%s\n" % item)
with open(directory + "/" + "pwm/mono/FOXA1_HUMAN_mfa_files.txt", "w") as f2:
    for item in files_names2:
        #print(item)
        f2.write("%s\n" % item)
with open(directory + "/" + "pwm/mono/CTCF_HUMAN_mfa_files.txt", "w") as f3:
    for item in files_names3:
        #print(item)
        f3.write("%s\n" % item)


# In[ ]:


#CTCF_HUMAN
#os.chdir(directory+"/"+"pwm/mono/CTCF_HUMAN")   # scaning surroundings
#files_ANDR_HUMAN = os.listdir(path=".")
#print(files_ANDR_HUMAN)

