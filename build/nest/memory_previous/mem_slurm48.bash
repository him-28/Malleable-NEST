#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem48_%j.out
#SBATCH --error=mem48_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
for i in {1..10}; 
do 
./timeout mpirun -n 48 ./nest $1 &>> out48.txt
done
grep MAXMEM out48.txt   >> t48.txt
awk '{ total += $7; count++ } END { print  total/count }' t48.txt
awk '{ total += $7; count++ } END { print  total/count }' t48.txt >> avgmem.txt  
exit
