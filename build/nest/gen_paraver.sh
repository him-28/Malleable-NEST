#!/bin/bash
#SBATCH --job-name=scale_massif
#SBATCH -D .
#SBATCH --output=paraver96_%j.out
#SBATCH --error=paraver96_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48


PROGRAM=nest

# Uncomment to instrument
 export INST=./trace.sh

# Uncomment to enable DLB
# export NX_ARGS+=" --thread-manager=dlb"
 #export DLB_ARGS+=" --policy=auto_LeWI_mask"

# Uncomment to enable DLB MPI interception
# export OMPSSEE_LD_PRELOAD=$DLB_HOME/lib/libdlb_mpi_instr.so

#export NX_ARGS+=" --force-tie-master --warmup-threads"
export OMP_NUM_THREADS=48
$INST mpirun -n 1 ./$PROGRAM $1
#mpi2prv -f scale48.mpits -o scale48.prv
