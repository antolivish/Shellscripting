clear
nano $1
nano $2
user=$(cat $1| wc -1)
Pswd=$(cat $2| wc -1)
if [ $user == $Pswd ]
then 
	while read -r -u 3 user && read -r -u 4 Pswd
	sudo useradd $user
	sudo echo -e "$Pswd\n$Pswd" | passwd $useradd 
	done 3<$1 4<$2
else 
echo " Cant create Username and password"
fi
