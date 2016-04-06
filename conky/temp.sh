#!/bin/sh

CPU0=`sensors | grep "Core 0" | awk '{print $3}' | tr -d '+°C'`
CPU1=`sensors | grep "Core 2" | awk '{print $3}' | tr -d '+°C'`
CPU0=`python -c "print(round($CPU0))"`
#CPU1=`python -c "print(round($CPU1))"`

HDD=`nc localhost 7634 | cut -d '|' -f4`
GPU=`nvidia-smi -a | grep "GPU Current Temp" | awk '{print $5}'`

echo -n "\\\\x03CPU0: "

if [ $CPU0 -lt 80 ]; then
	echo -n "\\\\x04"
else
	if [ $CPU0 -lt 90 ]; then
		echo -n "\\\\x05"
	else
		echo -n "\\\\x06"
	fi
fi

echo -n "${CPU0}°C \\\\x01HDD: "

if [ $HDD -lt 50 ]; then
        echo -n "\\\\x04"
else
        if [ $HDD -lt 70 ]; then
                echo -n "\\\\x05"
        else
                echo -n "\\\\x06"
        fi
fi

echo -n "${HDD}°C \\\\x01GPU: "

if [ $GPU -lt 70 ]; then
        echo -n "\\\\x04"
else
        if [ $GPU -lt 90 ]; then
                echo -n "\\\\x05"
        else
                echo -n "\\\\x06"
        fi
fi

echo "${GPU}°C"
    
