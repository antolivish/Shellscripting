clear
mkdir Que_2
echo "Write the filename:"
read name 
echo "Write the path of file entered"
read path
if [ -f ${path}/${name} ] 
then
echo "File exist so the file is removed"
cd  ${path}
rm ${name}
else
echo "No file so created file"
tar cvf $name.tar $name
mv $name.tar /home/antolivish/Scripting/Que_2/
fi
