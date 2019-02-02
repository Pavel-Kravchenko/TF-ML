cd ./control
a=*.mfa
#echo > ../pwm/mono/$1_control.mfa
rm ../pwm/mono/$1_control.mfa
echo $1
for i in $a
do
echo ${i:0:10}
if [ "${i:0:10}" != "$1" ]
then
    cat $i >> ../pwm/mono/$1_control.mfa
fi
done

#ANDR_HUMAN
#FOXA1_HUMAN
#CTCF_HUMAN

