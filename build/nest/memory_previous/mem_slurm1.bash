#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem1_%j.out
#SBATCH --error=mem1_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
export OMP_NUM_THREADS=48
for i in {1..10}; 
do 
./timeout mpirun -n 1 ./nest $1 &>> out1.txt
done
grep MAXMEM out1.txt   >> t1.txt
awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' t1.txt >> avgmem.txt  
exit
