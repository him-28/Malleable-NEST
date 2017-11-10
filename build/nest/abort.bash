#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=abort_%j.out
#SBATCH --error=abort_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=1
#for i in {1..10}; 
#do 
mpirun -n 48 ./nest $1 
#done 
exit
