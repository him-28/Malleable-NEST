#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=memall_%j.out
#SBATCH --error=memall_%j.err
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=17:05:00
for x in 1 2 3 4 6 8 12 16 24 48 ; do
y = 48/$x;        
export OMP_NUM_THREADS=$y
  	for i in {1..10}; 
	do 
	./timeout mpirun -n $x ./nest $1 &>> xt$x.txt
	done
	grep MAXMEM xt$x.txt   >> xt_mem$x.txt
	awk '{ total += $7; count++ } END { print  total/count }' xt_mem$x.txt >> A.txt  
done
exit
