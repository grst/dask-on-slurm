#!/bin/bash

#SBATCH --tasks-per-node=16
dask-worker --nthreads 16 $1
