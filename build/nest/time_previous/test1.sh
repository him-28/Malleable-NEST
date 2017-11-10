#!/bin/bash
#SBATCH --job-name=test_nest
#SBATCH -D .
#SBATCH --output=mpi_%j.out
#SBATCH --error=mpi_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
#SBATCH --time=17:05:00
export OMP_NUM_THREADS=12
begin=$(date +%s.%N) 
mpirun -np 4 ./nest $1 #-n 12 ./nest $1
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime
