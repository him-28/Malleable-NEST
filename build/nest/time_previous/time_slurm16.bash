#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=extime16_%j.out
#SBATCH --error=extime16_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=3
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=3
file="e16.txt"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
   begin=$(date +%s.%N)
   mpirun -n 16 ./nest $1
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> e16.txt
done 
awk '{ total += $3; count++ } END { print  total/count }' e16.txt 
awk '{ total += $3; count++ } END { print  total/count }' e16.txt >> avgexec.txt   
exit
