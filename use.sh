d_n="../shell"
u="use.sh"
if [ -f "$u" ];
then
echo
else
cp -rf shell/$u .
fi
restA(){
echo -en 'same commmand used \r';sleep
echo -en 'restarting .\r';sleep 01;echo -en 'restarting ..\r';sleep 01;echo -en 'restarting ...\r';sleep 1;
echo -en 'restarting .\r';sleep 01;echo -en 'restarting ..\r';sleep 01;echo -en 'restarting ...\r';sleep 1
}

main(){
git clone https://github.com/termux4me2/shell
cd shell
samE=$(diff comX comY|wc -c)
if [ "$samE" -eq "0" ];
then
bash comX
else
restA
fi
mv comX comY
mv comY ..
rm -rf $d_n
}

opXvalue=0
while [ "$opXvalue" -eq "0" ];
then
main
fi
