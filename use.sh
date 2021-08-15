d_n="shell";u="use.sh";rx='restarting';opXvalue='0'
resta(){
echo -en "$rx.\r";sleep 01;echo -en "$rx ..\r";sleep 01;echo -en "$rx ...\r";sleep 1;
}
restA(){
echo -en 'same commmand used \r';sleep 0.8
resta;resta
}
main(){
git clone -q https://github.com/termux4me2/shell
if [ -d "shell" ];
then
#check if shell is download
if [ -f "comY" ];
then
cd shell
samE=$(diff comX ../comY|wc -c 2>/dev/null)
#rm ../comY 2>/dev/null
if [ "$samE" -eq "0" ];
then
restA
else
bash comX
fi
mv comX comY
mv comY ..
cd ..
rm -rf $d_n
else
echo 'shell directory not found'
fi
fi
}
while [ "$opXvalue" -eq "0" ];
do
main
done
