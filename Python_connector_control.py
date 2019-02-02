import os
import re

directory = os.getcwd()   # setting working directory


os.chdir(directory+"/"+"control")   # scaning surroundings
names = os.listdir(directory+"/"+"control")
#print(names)


files_names1 = sorted([x for x in names if ((x[:10] != "ANDR_HUMAN") and (x[-4:] == ".mfa"))])

#print(files_names1)
print("")

print("Found", len(files_names1), ".mfa files for ANDR_HUMAN control at all")

files_names2 = sorted([x for x in names if ((x[:10] != "FOXA1_HUMAN") and (x[-4:] == ".mfa"))])
#print(files_names2)
print("")

print("Found", len(files_names2), ".mfa files for FOXA1_HUMAN control at all")

files_names3 = sorted([x for x in names if ((x[:10] != "CTCF_HUMAN") and (x[-4:] == ".mfa"))])
#print(files_names3)
print("")

print("Found", len(files_names3), ".mfa files for CTCF_HUMAN control at all")


#re.findall(r"ANDR_HUMAN.+", ' '.join(files_names1))



with open(directory + "/" + "pwm/mono/ANDR_HUMAN_control.txt", "w") as f1:
    for item in files_names1:
        f1.write("%s\n" % item)
with open(directory + "/" + "pwm/mono/FOXA1_HUMAN_control.txt", "w") as f2:
    for item in files_names2:
        f2.write("%s\n" % item)
with open(directory + "/" + "pwm/mono/CTCF_HUMAN_control.txt", "w") as f3:
    for item in files_names3:
        f3.write("%s\n" % item)



#CTCF_HUMAN
#os.chdir(directory+"/"+"pwm/mono/CTCF_HUMAN")   # scaning surroundings
#files_ANDR_HUMAN = os.listdir(path=".")
#print(files_ANDR_HUMAN)

