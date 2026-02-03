#!/bin/bash
sleep 30
echo "Starting SDL National DAB Encoders"
/home/sysadmin/encoder-conf/sdlnational-enc.sh &
echo "Pausing to give encoders time to fire up."
sleep 10
echo "Starting SDL National DAB Multiplex"
odr-dabmux /home/sysadmin/multiplex-conf/sdlnational.mux &
echo "Service running. Tail Forever!"
tail -f /dev/null
