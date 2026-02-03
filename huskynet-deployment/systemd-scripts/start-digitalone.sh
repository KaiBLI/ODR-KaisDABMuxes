#!/bin/bash
sleep 45
echo "Starting Digital One DAB Encoders"
/home/sysadmin/encoder-conf/digitalone-enc.sh &
echo "Pausing to give encoders time to fire up."
sleep 10
echo "Starting Digital One DAB Multiplex"
odr-dabmux /home/sysadmin/multiplex-conf/digital-one.mux &
echo "Service running. Tail Forever!"
tail -f /dev/null
