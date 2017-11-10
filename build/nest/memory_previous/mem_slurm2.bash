#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem2_%j.out
#SBATCH --error=mem2_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=24
export OMP_NUM_THREADS=24
for i in {1..10}; 
do 
./timeout mpirun -n 2 ./nest $1 &>> out2.txt
done
grep MAXMEM out2.txt   >> t2.txt
awk '{ total += $7; count++ } END { print  total/count }' t2.txt
awk '{ total += $7; count++ } END { print  total/count }' t2.txt >> avgmem.txt  
exit
