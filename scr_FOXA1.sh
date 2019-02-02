echo "----------------------------------------------------------------"
echo "-----------------------@@@@@@@@@@@@@----------------------------"
echo "-----------------------@@Let's go!@@----------------------------"
echo "-----------------------@@@@@@@@@@@@@----------------------------"
echo "----------------------------------------------------------------"


home=`pwd`
#control_FOXA1_HUMAN
mkdir $home/pwm/mono/control_FOXA1_HUMAN
cd $home/pwm/mono/control_FOXA1_HUMAN
a11=$home/pwm/mono/FOXA1_HUMAN/FOXA1_HUMAN*.pwm


for i in $a11
do
echo ${i:77:5}
if [ ${i:77:5} -ge 39267 ]
then
if [ ${i:77:5} -le 39267 ]  # 0 34673 35020 37078 37542 39150 50000
then
echo ${i:44}
java -Xmx2G -cp $home/sarus/releases/sarus-2.0.1.jar ru.autosome.SARUS $home/pwm/mono/FOXA1_HUMAN_control.mfa $i --skipn --show-non-matching --output-scoring-mode score besthit > FOXA1_HUMAN_control_#_"${i:44}"_compare_table.tab

echo "-----------------------@@@Done@@@@----------------------------"

else
break

fi

else 
continue

fi
done
#rm merged.tab
#python $home/Python_tabs_merger.py

cd $home



echo "----------------------------------------------------------"
echo "-----------------------@@@@@@@----------------------------"
echo "-----------------------@@End@@----------------------------"
echo "-----------------------@@@@@@@----------------------------"
echo "----------------------------------------------------------"

