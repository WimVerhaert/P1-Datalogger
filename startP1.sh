#!/bin/bash
app="python3.5 /path/P1.py  -emoncmshost 127.0.0.1/emoncms -emoncmsapi MyApiKey -emoncmso Y -c /dev/ttyUSB0"
/dev/ttyUSB0"

app_pid=`ps -ef | grep /path/P1.py| awk '{print $2}'`

if `ps -p $app_pid > /dev/null`; then
    echo "An instance of P1 datacollector appear to be running."

	    echo "Not starting another instance."
		    exit 5
			else
				echo "Starting instance op P1 datacollector"
			    $app &> /dev/null &
				fi
