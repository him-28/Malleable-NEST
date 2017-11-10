#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem6_%j.out
#SBATCH --error=mem6_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=8
export OMP_NUM_THREADS=8
for i in {1..10}; 
do 
./timeout mpirun -n 6 ./nest $1 &>> out6.txt
done
grep MAXMEM out6.txt   >> t6.txt
awk '{ total += $7; count++ } END { print  total/count }' t6.txt
awk '{ total += $7; count++ } END { print  total/count }' t6.txt >> avgmem.txt  
exit
