#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mem4_%j.out
#SBATCH --error=mem4_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
export OMP_NUM_THREADS=12
for i in {1..10}; 
do 
./timeout mpirun -n 4 ./nest $1 &>> out4.txt
done
grep MAXMEM out4.txt   >> t4.txt
awk '{ total += $7; count++ } END { print  total/count }' t4.txt
awk '{ total += $7; count++ } END { print  total/count }' t4.txt >> avgmem.txt  
exit
