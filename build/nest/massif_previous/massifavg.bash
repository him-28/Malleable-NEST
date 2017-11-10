#!/bin/bash
for i in {1..10};
do
cd map$i
ms_print massif.out.* | tail -n 1 >> datadog.txt
	for x in `ls massif.out.*`
        do
        ms_print  $x | tail -n 1  >> heap.txt
	done
cd ../
done 
exit
