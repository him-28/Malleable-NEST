#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime4_%j.out
#SBATCH --error=extime4_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=12
file="e4.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 4 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e4.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e4.txt 
awk '{ total += $3; count++ } END { print  total/count }' e4.txt >> avgexec.txt   
exit
