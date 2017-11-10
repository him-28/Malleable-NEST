#!/bin/bash
#SBATCH --job-name=valgrind_massif
#SBATCH -D .
#SBATCH --output=massif3_%j.out
#SBATCH --error=massif3_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
DIR=map
mkdir massif3
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
export OMP_NUM_THREADS=16
valgrind --tool=massif mpirun -n 3 ./nest $1 
cd massif3
mkdir map$i
mv ../massif.out.* map$i
#cd map$i
#ms_print  massif.out.* | tail -n 1  >> heap.txt
cd ../
done 
exit
