#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem3_%j.out
#SBATCH --error=mem3_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
export OMP_NUM_THREADS=16
for i in {1..10}; 
do 
./timeout mpirun -n 3 ./nest $1 &>> out3.txt
done
grep MAXMEM out3.txt   >> t3.txt
awk '{ total += $7; count++ } END { print  total/count }' t3.txt
awk '{ total += $7; count++ } END { print  total/count }' t3.txt >> avgmem.txt  
exit
