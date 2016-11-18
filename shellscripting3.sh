mkdir Que_3
cd Que_3
ps -e>pid.txt
awk '{print $1 $3}' pid.txt>pid1.txt
rm pid.txt
