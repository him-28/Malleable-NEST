#!/bin/bash
#SBATCH --job-name=lulesh
#SBATCH --partition=slims
#SBATCH -n 27
#SBATCH --ntasks-per-node=14 
#SBATCH --output=lulesh_%j.out
#SBATCH --error=lulesh_%j.err
#SBATCH --exclusive=user
#SBATCH --mail-type=ALL
module load intel impi
TRACE=./trace2.sh
export OMP_NUM_THREADS=8
srun -n 8  $TRACE ./nest $1 
#$TRACE mpirun -np 5  ./nest  $1
$EXTRAE_HOME/bin/mpi2prv -f TRACE.mpits -o malleable_new1.prv
