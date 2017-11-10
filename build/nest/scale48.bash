#!/bin/bash
#SBATCH --job-name=scale48
#SBATCH -D .
#SBATCH --output=scale48_%j.out
#SBATCH --error=scale48_%j.err
#SBATCH --nodes=1
#SBATCH --time=17:05:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48

# Uncomment the following line to trace MPI+OmpSs programs
export LD_PRELOAD=${EXTRAE_HOME}/lib/libnanosmpitrace.so

# Uncomment the following line to trace MPI+OpenMP (GNU) programs
export LD_PRELOAD=${EXTRAE_HOME}/lib/libompitrace.so

export LD_PRELOAD="$LD_PRELOAD:$OMPSSEE_LD_PRELOAD"

export EXTRAE_CONFIG_FILE=extrae.xml
export NX_INSTRUMENTATION=extrae

export OMP_NUM_THREADS=48
mpirun -n 1 /usr/bin/time -v ./nest $1 
mpi2prv -f TRACE.mpits -o scale48.prv
exit