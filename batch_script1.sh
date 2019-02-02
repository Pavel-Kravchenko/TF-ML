echo "----------------------------------------------------------------"
echo "-----------------------@@@@@@@@@@@@@----------------------------"
echo "-----------------------@@Let's go!@@----------------------------"
echo "-----------------------@@@@@@@@@@@@@----------------------------"
echo "----------------------------------------------------------------"


#python Python_connector.py


#ANDR_HUMAN
home=`pwd`
#rm -r $home/pwm/mono/summary_ANDR_HUMAN
#mkdir $home/pwm/mono/summary_ANDR_HUMAN
#a1=$home/pwm/mono/ANDR_HUMAN/ANDR_HUMAN*.pwm

#FILE1="$home/pwm/mono/ANDR_HUMAN_mfa_files.txt"
#while read line; do
     #echo "file line : $line"
     #mkdir $home/pwm/mono/summary_ANDR_HUMAN/${line%.train.mfa}
     #cd $home/pwm/mono/summary_ANDR_HUMAN/${line%.train.mfa}
     #for i in $a1
     #do
     #echo ${i:43}
      #java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS /home/pavel-kravchenko/train/$line $i --skipn --show-non-matching --output-scoring-mode score besthit > ${line%.train.mfa}_#_"${i:43}"_compare_table.tab
     #done
     #3rm merged.tab
     #python $home/Python_tabs_merger.py
     #cd ..
#echo "--------------------------------------------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "-----------------------@@@Done@@@@----------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "--------------------------------------------------------------"
#done < $FILE1


#FOXA1_HUMAN
#cd $home
#rm -r $home/pwm/mono/summary_FOXA1_HUMAN
#mkdir $home/pwm/mono/summary_FOXA1_HUMAN
#a2=$home/pwm/mono/FOXA1_HUMAN/FOXA1_HUMAN*.pwm

#FILE2="$home/pwm/mono/FOXA1_HUMAN_mfa_files.txt"
#while read line; do
     #echo "file line : $line"
     #mkdir $home/pwm/mono/summary_FOXA1_HUMAN/${line%.train.mfa}
     #cd $home/pwm/mono/summary_FOXA1_HUMAN/${line%.train.mfa}
     #for i in $a2
     #do
     #echo ${i:43}
      #java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS /home/pavel-kravchenko/train/$line $i --skipn --show-non-matching --output-scoring-mode score besthit > ${line%.train.mfa}_#_"${i:43}"_compare_table.tab
     #done
     #rm merged.tab
     #python $home/Python_tabs_merger.py
     #cd ..
#echo "--------------------------------------------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "-----------------------@@@Done@@@@----------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "--------------------------------------------------------------"
#done < $FILE2



#CTCF_HUMAN
#cd $home
#rm -r $home/pwm/mono/summary_CTCF_HUMAN
#mkdir $home/pwm/mono/summary_CTCF_HUMAN
#a3=$home/pwm/mono/CTCF_HUMAN/CTCF_HUMAN*.pwm

#FILE3="$home/pwm/mono/CTCF_HUMAN_mfa_files.txt"
#while read line; do
     #echo "file line : $line"
     #mkdir $home/pwm/mono/summary_CTCF_HUMAN/${line%.train.mfa}
     #cd $home/pwm/mono/summary_CTCF_HUMAN/${line%.train.mfa}
     #for i in $a3
     #do
     #echo ${i:43}
      #java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS /home/pavel-kravchenko/train/$line $i --skipn --show-non-matching --output-scoring-mode score besthit > ${line%.train.mfa}_#_"${i:43}"compare_table.tab
     #done
     #python $home/Python_tabs_merger.py
     #cd ..
#echo "--------------------------------------------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "-----------------------@@@Done@@@@----------------------------"
#echo "-----------------------@@@@@@@@@@@----------------------------"
#echo "--------------------------------------------------------------"
#done < $FILE3

#cd $home



#control_ANDR_HUMAN
mkdir $home/pwm/mono/train_ANDR_HUMAN
cd $home/pwm/mono/train_ANDR_HUMAN
a11=$home/pwm/mono/ANDR_HUMAN/ANDR_HUMAN*.pwm

for i in $a11
do
echo ${i:43}
java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS $home/pwm/mono/ANDR_HUMAN_train.mfa $i --skipn --show-non-matching --output-scoring-mode score besthit > ANDR_HUMAN_control_#_"${i:43}"_compare_table.tab

echo "-----------------------@@@Done@@@@----------------------------"
done
rm merged.tab
python $home/Python_tabs_merger.py

cd $home


#control_FOXA1_HUMAN
#mkdir $home/pwm/mono/train_FOXA1_HUMAN
#cd $home/pwm/mono/train_FOXA1_HUMAN
#a11=$home/pwm/mono/FOXA1_HUMAN/FOXA1_HUMAN*.pwm

#for i in $a11
#do
#echo ${i:44}
#java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS $home/pwm/mono/FOXA1_HUMAN_control.mfa $i --skipn --show-non-matching --output-scoring-mode score besthit > FOXA1_HUMAN_control_#_"${i:44}"_compare_table.tab

#echo "-----------------------@@@Done@@@@----------------------------"
#done
#rm merged.tab
#python $home/Python_tabs_merger.py

#cd $home


#control_CTCF_HUMAN
#mkdir $home/pwm/mono/train_CTCF_HUMAN
#cd $home/pwm/mono/train_CTCF_HUMAN
#a11=$home/pwm/mono/CTCF_HUMAN/CTCF_HUMAN*.pwm

#for i in $a11
#do
#echo ${i:43}
#java -Xmx10G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS $home/pwm/mono/CTCF_HUMAN_train.mfa $i --skipn --show-non-matching --output-scoring-mode score besthit > CTCF_HUMAN_control_#_"${i:43}"_compare_table.tab

#echo "-----------------------@@@Done@@@@----------------------------"
#done
#rm merged.tab
#python $home/Python_tabs_merger.py

#cd $home

echo "----------------------------------------------------------"
echo "-----------------------@@@@@@@----------------------------"
echo "-----------------------@@End@@----------------------------"
echo "-----------------------@@@@@@@----------------------------"
echo "----------------------------------------------------------"

