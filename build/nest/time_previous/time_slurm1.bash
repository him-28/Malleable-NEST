#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime1_%j.out
#SBATCH --error=extime1_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=48
file="e1.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 1 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e1.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e1.txt 
awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt   
exit
