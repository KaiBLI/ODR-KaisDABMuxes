#!/bin/bash
sleep 40
echo "Starting BBC National DAB Encoders"
/home/sysadmin/encoder-conf/bbcnatdab-enc.sh &
echo "Pausing to give encoders time to fire up."
sleep 10
echo "Starting BBC National DAB Multiplex"
odr-dabmux /home/sysadmin/multiplex-conf/bbc-national-dab.mux &
echo "Service running. Tail Forever!"
tail -f /dev/null
