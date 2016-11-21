clear
mkdir Que_2
path=$1
name=$2
[ -f $path/$name ] && rm $path/$name || tar cvf $name.tar $path
