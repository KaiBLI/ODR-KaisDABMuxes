#!/bin/bash
sleep 20
echo "Starting MXR South Wales DAB Encoders"
/home/sysadmin/encoder-conf/mxr-swales-enc.sh &
echo "Pausing to give encoders time to fire up."
sleep 10
echo "Starting MXR South Wales DAB Multiplex"
odr-dabmux /home/sysadmin/multiplex-conf/mxr-swales.mux &
echo "Service running. Tail Forever!"
tail -f /dev/null
