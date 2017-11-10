#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem24_%j.out
#SBATCH --error=mem24_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=24
#SBATCH --cpus-per-task=2
export OMP_NUM_THREADS=2
for i in {1..10}; 
do 
./timeout mpirun -n 24 ./nest $1 &>> out24.txt
done
grep MAXMEM out24.txt   >> t24.txt
awk '{ total += $7; count++ } END { print  total/count }' t24.txt
awk '{ total += $7; count++ } END { print  total/count }' t24.txt >> avgmem.txt  
exit
