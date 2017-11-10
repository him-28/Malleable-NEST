#!/bin/bash
#SBATCH --job-name=usr_bin_time_memory
#SBATCH -D .
#SBATCH --output=usr_bin_time_memory_%j.out
#SBATCH --error=usr_bin_time_memory_%j.err
#SBATCH --nodes=4
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

INST=/usr/bin/time
#x= $1
export OMP_NUM_THREADS=48
begin=$(date +%s.%N)
mpirun -n 1 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi1.txt 
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi1.prv

#SBATCH --ntasks=2
#SBATCH --cpus-per-task=24
export OMP_NUM_THREADS=24
begin=$(date +%s.%N)
mpirun -n 2 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi2.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi2.prv


#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
export OMP_NUM_THREADS=16
begin=$(date +%s.%N)
mpirun -n 3 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi3.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi3.prv


#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
export OMP_NUM_THREADS=12
begin=$(date +%s.%N)
mpirun -n 4 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi4.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi4.prv


#SBATCH --ntasks=6
#SBATCH --cpus-per-task=8
export OMP_NUM_THREADS=8
begin=$(date +%s.%N)
mpirun -n 6 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi6.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi6.prv


#SBATCH --ntasks=8
#SBATCH --cpus-per-task=6
export OMP_NUM_THREADS=6
begin=$(date +%s.%N)
mpirun -n 8 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi8.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi8.prv


#SBATCH --ntasks=12
#SBATCH --cpus-per-task=4
export OMP_NUM_THREADS=4
begin=$(date +%s.%N)
mpirun -n 12 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi12.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi12.prv


#SBATCH --ntasks=16
#SBATCH --cpus-per-task=3
export OMP_NUM_THREADS=3
begin=$(date +%s.%N)
mpirun -n 16 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi16.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi16.prv


#SBATCH --ntasks=24
#SBATCH --cpus-per-task=2
export OMP_NUM_THREADS=2
begin=$(date +%s.%N)
mpirun -n 24 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi24.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi24.prv


#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
begin=$(date +%s.%N)
mpirun -n 48 $INST -v ./nest hpc_benchmark.sli &>> node4_mpi48.txt   
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime  >> timeal4.txt
mpi2prv -f TRACE.mpits -o node4_mpi48.prv


exit
