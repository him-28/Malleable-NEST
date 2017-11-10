#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime6_%j.out
#SBATCH --error=extime6_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=6
#SBATCH --cpus-per-task=8
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=8
file="e6.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 6 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e6.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e6.txt 
awk '{ total += $3; count++ } END { print  total/count }' e6.txt >> avgexec.txt   
exit
