#!/bin/bash
DIR=map
file="massif.out.*"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
if [ -d "$DIR$i" ]; then
    printf '%s\n' "Removing Lock ($DIR)"
    rm -r "$DIR$i"
fi
done
for i in {1..10};
do
valgrind --tool=massif srun -n 8 ./nest $1 
mkdir map$i
mv massif.out.* map$i
cd map$i
ms_print  massif.out.* | tail -n 1  >> heap.txt
cd ../
done 
#sed -e 's/Execution time:\(.*\)seconds/\1/' < x.txt  >> y.txt
#awk '{ total += $1; count++ } END { print  total/count }' x.txt #awk '{s+=$1}END{print "ave:",s/NR}' RS=" " y.txt 
exit
