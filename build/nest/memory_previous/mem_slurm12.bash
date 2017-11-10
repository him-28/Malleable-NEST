#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem12_%j.out
#SBATCH --error=mem12_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=4
export OMP_NUM_THREADS=4
for i in {1..10}; 
do 
./timeout mpirun -n 12 ./nest $1 &>> out12.txt
done
grep MAXMEM out12.txt   >> t12.txt
awk '{ total += $7; count++ } END { print  total/count }' t12.txt
awk '{ total += $7; count++ } END { print  total/count }' t12.txt >> avgmem.txt  
exit
