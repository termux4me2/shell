d_n="../shell"
u="use.sh"
restA(){
echo -en 'same commmand used \r';sleep
echo -en 'restarting .\r';sleep 01;echo -en 'restarting ..\r';sleep 01;echo -en 'restarting ...\r';sleep 1;
echo -en 'restarting .\r';sleep 01;echo -en 'restarting ..\r';sleep 01;echo -en 'restarting ...\r';sleep 1
}
main(){
git clone https://github.com/termux4me2/shell
if [ -d "shell" ];
then 
#check if shell is download
cd shell
samE=$(diff comX ../comY|wc -c)
if [ "$samE" -eq "0" ];
then
restA
else
bash comX
fi
mv comX comY
mv comY ..
rm -rf $d_n
else
echo 'shell directory not found'
fi
}

opXvalue=0
while [ "$opXvalue" -eq "0" ];
do
main
done
