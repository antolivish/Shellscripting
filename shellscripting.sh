ps -e>task3pid.txt
awk '{print $1}' 
task3pid.txt>task3.txt
rm task3pid.txt
