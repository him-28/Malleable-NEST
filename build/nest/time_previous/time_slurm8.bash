#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime8_%j.out
#SBATCH --error=extime8_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=6
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=6
file="e8.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 8 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e8.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e8.txt 
awk '{ total += $3; count++ } END { print  total/count }' e8.txt >> avgexec.txt   
exit
