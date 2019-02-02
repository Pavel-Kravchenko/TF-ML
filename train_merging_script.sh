
cd ./train
a=*.mfa
rm ../pwm/mono/$1_train.mfa
#echo > ../pwm/mono/$1_train.mfa
echo $1
for i in $a
do
echo ${i:0:10} #${i:0:10}
if [ "${i:0:10}" == "$1" ]  #${i:0:10}
then
    cat $i >> ../pwm/mono/$1_train.mfa
fi
done

#ANDR_HUMAN
#FOXA1_HUMAN
#CTCF_HUMAN

