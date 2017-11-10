#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime48_%j.out
#SBATCH --error=extime48_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=1
file="e48.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 48 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e48.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e48.txt 
awk '{ total += $3; count++ } END { print  total/count }' e48.txt >> avgexec.txt   
exit
