begin=$(date +%s.%N) 
mpirun -np 2 ./nest $1
end=$(date +%s.%N)
tottime=$(echo "$end - $begin" | bc)
printf "Execution time: %.6f seconds\n" $tottime
