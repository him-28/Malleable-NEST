#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem16_%j.out
#SBATCH --error=mem16_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=3
export OMP_NUM_THREADS=3
for i in {1..10}; 
do 
./timeout mpirun -n 16 ./nest $1 &>> out16.txt
done
grep MAXMEM out16.txt   >> t16.txt
awk '{ total += $7; count++ } END { print  total/count }' t16.txt
awk '{ total += $7; count++ } END { print  total/count }' t16.txt >> avgmem.txt  
exit
