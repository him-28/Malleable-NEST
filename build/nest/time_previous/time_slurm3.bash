#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime3_%j.out
#SBATCH --error=extime3_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=16
file="e3.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 3 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e3.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e3.txt 
awk '{ total += $3; count++ } END { print  total/count }' e3.txt >> avgexec.txt   
exit
