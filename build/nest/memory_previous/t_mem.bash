#!/bin/bash
file="timeout_mem.txt"
if [ -f $file ]; then
   rm $file
fi
file1="output.txt"
if [ -f $file1 ]; then
   rm $file1
fi
#rm y.txt 
for i in {1..10}; 
do 
./timeout ./time1.sh $1 &>> output.txt
done
grep MAXMEM output.txt   >> timeout_mem.txt
#sed -e 's/Execution time:\(.*\)seconds/\1/' < x.txt  >> y.txt
awk '{ total += $7; count++ } END { print  total/count }' timeout_mem.txt #awk '{s+=$1}END{print "ave:",s/NR}' RS=" " y.txt 
exit
