#!/bin/bash
file="x.txt"
if [ -f $file ] ; then
    rm $file
fi
#rm y.txt 
for i in {1..10}; 
do 
./time1.sh $1 | tail -n 1 | sed -e 's/Execution time:\(.*\)seconds/\1/' >> x.txt
done 
#sed -e 's/Execution time:\(.*\)seconds/\1/' < x.txt  >> y.txt
awk '{ total += $1; count++ } END { print  total/count }' x.txt #awk '{s+=$1}END{print "ave:",s/NR}' RS=" " y.txt 
exit
