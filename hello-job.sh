#!/bin/bash
#SBATCH -J mpi-hello            # Job name
#SBATCH -n 2                    # Number of processes
#SBATCH -t 0:10:00              # Max wall time
#SBATCH -o hello-job.out        # Output file name

# Run the job (assumes the batch script is submitted from the same directory)
mpicc hello.c -o hello
mpirun --allow-run-as-root -np 2 ./hello
