u="use.sh"
check(){
if [ -f "$u" ];
then
echo "$u exist"
else
mv  $u ..
fi
}
#double check
check
check
