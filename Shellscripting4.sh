nano $1
nano $2
user=$(cat username | wc -l)
pswd=$(cat password | wc -l)
if [ $user -eq $pswd ]
then
#echo "eq" 
paste username password | while IFS="$(printf '\t')" read -r u p
	do
	sudo useradd $u
	echo $u:$p | chpasswd
	done 
else 
echo "Cant create username and password"
fi
