#!/bin/bash
# Start the local validator nodes
if [ $# -eq 2 ]
then
NODECOUNT=$1
LIBPATH=$2
eval cd $LIBPATH; 
ulimit -n 8192;
fondant_util/cargo run -p libra_swarm -- -s -c localConfig -n $NODECOUNT
else
echo invalid number of args
fi