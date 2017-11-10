#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime12_%j.out
#SBATCH --error=extime12_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --cpus-per-task=4
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=4
file="e12.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 12 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e12.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e12.txt 
awk '{ total += $3; count++ } END { print  total/count }' e12.txt >> avgexec.txt   
exit
