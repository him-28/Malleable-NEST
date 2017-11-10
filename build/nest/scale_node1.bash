#!/bin/bash
#SBATCH --job-name=scale_node1
#SBATCH -D .
#SBATCH --output=scale_node1_%j.out
#SBATCH --error=scale_node1_%j.err
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
mpirun -n 1 /usr/bin/time -v ./nest hpc_benchmark.sli 
mpi2prv -f TRACE.mpits -o scale_node1.48.prv

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
mpirun -n 48  /usr/bin/time -v ./nest hpc_benchmark.sli
mpi2prv -f TRACE.mpits -o scale_node1.48.1.prv

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
export OMP_NUM_THREADS=48
mpirun -n 1 /usr/bin/time -v ./nest hpc_benchmark96.sli
mpi2prv -f TRACE.mpits -o scale_node1.96.prv

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
mpirun -n 48  /usr/bin/time -v ./nest hpc_benchmark96.sli
mpi2prv -f TRACE.mpits -o scale_node1.96.1.prv

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
export OMP_NUM_THREADS=48
mpirun -n 1 /usr/bin/time -v ./nest hpc_benchmark144.sli
mpi2prv -f TRACE.mpits -o scale_node1.144.prv

#SBATCH --ntasks=48
#SBATCH --cpus-per-task0=1
export OMP_NUM_THREADS=1
mpirun -n 48  /usr/bin/time -v ./nest hpc_benchmark144.sli
mpi2prv -f TRACE.mpits -o scale_node1.144.1.prv

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
export OMP_NUM_THREADS=48
mpirun -n 1 /usr/bin/time -v ./nest hpc_benchmark192.sli
mpi2prv -f TRACE.mpits -o scale_node1.192.prv

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
mpirun -n 48  /usr/bin/time -v ./nest hpc_benchmark192.sli
mpi2prv -f TRACE.mpits -o scale_node1.192.1.prv

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
export OMP_NUM_THREADS=48
mpirun -n 1 /usr/bin/time -v ./nest hpc_benchmark240.sli
mpi2prv -f TRACE.mpits -o scale_node1.240.prv

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
mpirun -n 48  /usr/bin/time -v ./nest hpc_benchmark240.sli
mpi2prv -f TRACE.mpits -o scale_node1.240.1.prv
exit
