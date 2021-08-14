u="use.sh"
s="../$u"
check(){
if [ -f "$s" ];
then
echo "$u exist"
else
mv  $u ..
fi
}
#double check
check
check
