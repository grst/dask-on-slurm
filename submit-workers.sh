#!/bin/bash
# IPADDR=$(ip addr | grep bond0: -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')

#####################
# USAGE:
#   ./submit-workers.sh CONNECTION N_WORKERS
# 
# where CONNECTION is the IP:PORT of the scheduler. 
#
# EXAMPLE:
#   ./submit-workers.sh 10.114.185.14:8786 10
#####################

for i in $(seq $2); do
    sbatch ./start-worker.sh $1
done
