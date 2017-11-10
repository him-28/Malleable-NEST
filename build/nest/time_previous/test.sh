export OMP_NUM_THREADS=6
./timeout mpirun -n 8  ./nest $1 

