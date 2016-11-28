#!/bin/bash

#SBATCH --tasks-per-node=1
#SBATCH --mem=50G
dask-worker --nthreads 1 $1
