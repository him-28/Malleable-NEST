#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime2_%j.out
#SBATCH --error=extime2_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=24
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=24
file="e2.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 2 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e2.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e2.txt 
awk '{ total += $3; count++ } END { print  total/count }' e2.txt >> avgexec.txt   
exit
