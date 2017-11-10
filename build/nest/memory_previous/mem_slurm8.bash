#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem8_%j.out
#SBATCH --error=mem8_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=6
export OMP_NUM_THREADS=6
for i in {1..10}; 
do 
./timeout mpirun -n 8 ./nest  $1 &>> out8.txt
done
grep MAXMEM out8.txt   >> t8.txt
awk '{ total += $7; count++ } END { print  total/count }' t8.txt
awk '{ total += $7; count++ } END { print  total/count }' t8.txt >> avgmem.txt  
exit
