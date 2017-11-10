#!/bin/bash
#SBATCH --job-name=valgrind_massif
#SBATCH -D .
#SBATCH --output=massif1_%j.out
#SBATCH --error=massif1_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
DIR=map
mkdir massif1
file="massif.out.*"
if [ -f $file ]; then
   rm $file
fi
for i in {1..10}; 
do 
if [ -d "$DIR$i" ]; then
    printf '%s\n' "Removing Lock ($DIR)"
    rm -r "$DIR$i"
fi
export OMP_NUM_THREADS=48
valgrind --tool=massif mpirun -n 1 ./nest $1 
cd massif1
mkdir map$i
mv ../massif.out.* map$i
#cd map$i
#ms_print  massif.out.* | tail -n 1  >> heap.txt
cd ../
done 
exit
