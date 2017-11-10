#!/bin/bash
#SBATCH --job-name=/usr/bin/time_memory
#SBATCH -D .
#SBATCH --output=/usr/bin/time_memory_%j.out
#SBATCH --error=/usr/bin/time_memory_%j.err
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

INST=/usr/bin/time
x= $1
export OMP_NUM_THREADS=48
for i in {1..10}; 
do 
	mpirun -n 1 $INST -v ./nest $x &>> node1_output1.txt
#	mpi2prv -f TRACE.mpits -o timeout1.prv
done
grep MAXMEM node1_output1.txt   >> node1_mem1.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem1.txt >> node1_avgmem.txt  

#SBATCH --ntasks=2
#SBATCH --cpus-per-task=24
export OMP_NUM_THREADS=24
for i in {1..10};
do
        mpirun -n 2 $INST -v ./nest $x &>> node1_output2.txt
#	mpi2prv -f TRACE.mpits -o timeout2.prv
done
#mpi2prv -f TRACE.mpits -o timeout2.prv
grep MAXMEM node1_output2.txt   >> node1_mem2.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem2.txt >> node1_avgmem.txt

#SBATCH --ntasks=3
#SBATCH --cpus-per-task=16
export OMP_NUM_THREADS=16
for i in {1..10};
do
        mpirun -n 3 $INST -v ./nest $x &>> node1_output3.txt
#	mpi2prv -f TRACE.mpits -o timeout3.prv
done
#mpi2prv -f TRACE.mpits -o timeout3.prv
grep MAXMEM node1_output3.txt   >> node1_mem3.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem3.txt >> node1_avgmem.txt

#SBATCH --ntasks=4
#SBATCH --cpus-per-task=12
export OMP_NUM_THREADS=12
for i in {1..10};
do
        mpirun -n 4 $INST -v ./nest $x &>> node1_output4.txt
#	mpi2prv -f TRACE.mpits -o timeout4.prv
done
#mpi2prv -f TRACE.mpits -o timeout4.prv
grep MAXMEM node1_output4.txt   >> node1_mem4.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem4.txt >> node1_avgmem.txt

#SBATCH --ntasks=6
#SBATCH --cpus-per-task=8
export OMP_NUM_THREADS=8
for i in {1..10};
do
        mpirun -n 6 $INST -v ./nest $x &>> node1_output6.txt
#	mpi2prv -f TRACE.mpits -o .prv
done
#mpi2prv -f TRACE.mpits -o timeout6.prv
grep MAXMEM node1_output6.txt   >> node1_mem6.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem6.txt >> node1_avgmem.txt

#SBATCH --ntasks=8
#SBATCH --cpus-per-task=6
export OMP_NUM_THREADS=6
for i in {1..10};
do
        mpirun -n 8 $INST -v ./nest $x &>> node1_output8.txt
done
#mpi2prv -f TRACE.mpits -o timeout8.prv
grep MAXMEM node1_output8.txt   >> node1_mem8.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' node1_mem8.txt >> node1_avgmem.txt

#SBATCH --ntasks=12
#SBATCH --cpus-per-task=4
export OMP_NUM_THREADS=4
for i in {1..10};
do
        mpirun -n 12 $INST -v ./nest $x &>> node1_output12.txt
done
#mpi2prv -f TRACE.mpits -o timeout12.prv
grep MAXMEM nodeoutput12.txt   >> mem12.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' mem12.txt >> avgmem.txt

#SBATCH --ntasks=16
#SBATCH --cpus-per-task=3
export OMP_NUM_THREADS=3
for i in {1..10};
do
        $INST mpirun -n 16 ./nest $x &>> output16.txt
done
mpi2prv -f TRACE.mpits -o timeout16.prv
grep MAXMEM output16.txt   >> mem16.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' mem16.txt >> avgmem.txt

#SBATCH --ntasks=24
#SBATCH --cpus-per-task=2
export OMP_NUM_THREADS=2
for i in {1..10};
do
        $INST mpirun -n 24 ./nest $x &>> output24.txt
done
mpi2prv -f TRACE.mpits -o timeout24.prv
grep MAXMEM output24.txt   >> mem24.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' mem24.txt >> avgmem.txt

#SBATCH --ntasks=48
#SBATCH --cpus-per-task=1
export OMP_NUM_THREADS=1
for i in {1..10};
do
        $INST mpirun -n 48 ./nest $x &>> output48.txt
done
mpi2prv -f TRACE.mpits -o timeout48.prv
grep MAXMEM output48.txt   >> mem48.txt
#awk '{ total += $7; count++ } END { print  total/count }' t1.txt
awk '{ total += $7; count++ } END { print  total/count }' mem48.txt >> avgmem.txt

exit
