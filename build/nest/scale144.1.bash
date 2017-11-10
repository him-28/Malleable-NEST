#!/bin/bash
#SBATCH --job-name=test_scale
#SBATCH -D .
#SBATCH --output=scale144.1._%j.out
#SBATCH --error=scale144.1._%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1

# Uncomment the following line to trace MPI+OmpSs programs
export LD_PRELOAD=${EXTRAE_HOME}/lib/libnanosmpitrace.so

# Uncomment the following line to trace MPI+OpenMP (GNU) programs
export LD_PRELOAD=${EXTRAE_HOME}/lib/libompitrace.so

export LD_PRELOAD="$LD_PRELOAD:$OMPSSEE_LD_PRELOAD"

export EXTRAE_CONFIG_FILE=extrae.xml
export NX_INSTRUMENTATION=extrae

mpirun -n 48  /usr/bin/time -v ./nest $1 
mpi2prv -f TRACE.mpits -o scale144.1.prv 
exit
