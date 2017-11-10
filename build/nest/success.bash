#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=success_%j.out
#SBATCH --error=success_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=48
for i in {1..10}; 
do 
mpirun -n 1 ./nest $1 
done 
exit
