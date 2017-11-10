#!/bin/bash
# Configure Extrae
export EXTRAE_CONFIG_FILE=/apps/BSCTOOLS/extrae/3.5.1/impi_2017_4/share/example/MPI/extrae.xml
# Load the tracing library (C/Fortran)
export LD_PRELOAD=${EXTRAE_HOME}/lib/libompitrace.so 
#export LD_PRELOAD=${EXTRAE_HOME}/lib/libmpitracef.so
# Run the program
$*
