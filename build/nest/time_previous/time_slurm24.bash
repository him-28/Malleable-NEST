#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime24_%j.out
#SBATCH --error=extime24_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --cpus-per-task=2
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=2
file="e24.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 24 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e24.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e24.txt 
awk '{ total += $3; count++ } END { print  total/count }' e24.txt >> avgexec.txt   
exit
