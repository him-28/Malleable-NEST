#!/bin/bash
#SBATCH --job-name=timex
#SBATCH -D .
#SBATCH --output=timex_%j.out
#SBATCH --error=timex_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --time=17:05:00
x=$1
export OMP_NUM_THREADS=48
file="timex1.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 1 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex1.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=2
#SBATCH --cpus-per-task=24
export OMP_NUM_THREADS=24
file="timex2.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 2 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex2.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
export OMP_NUM_THREADS=16
file="timex3.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 3 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex3.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
export OMP_NUM_THREADS=12
file="timex4.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 4 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex4.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=6
#SBATCH --cpus-per-task=8
export OMP_NUM_THREADS=8
file="timex6.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 6 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex6.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=8
#SBATCH --cpus-per-task=6
export OMP_NUM_THREADS=6
file="timex8.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 8 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex8.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=12
#SBATCH --cpus-per-task=4
export OMP_NUM_THREADS=4
file="timex12.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 12 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex12.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=16
#SBATCH --cpus-per-task=3
export OMP_NUM_THREADS=3
file="timex16.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 16 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex16.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=24
#SBATCH --cpus-per-task=2
export OMP_NUM_THREADS=2
file="timex24.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 24 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex24.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
file="timex48.txt"
if [ -f $file ]; then
   rm $file
fi
#for i in {1..10};
#do
   begin=$(date +%s.%N)
   mpirun -n 48 ./nest $x
   end=$(date +%s.%N)
   tottime=$(echo "$end - $begin" | bc)
   printf "Execution time: %.6f seconds\n" $tottime  >> timex48.txt
#done
#awk '{ total += $3; count++ } END { print  total/count }' time2.txt
#awk '{ total += $3; count++ } END { print  total/count }' e1.txt >> avgexec.txt
exit
