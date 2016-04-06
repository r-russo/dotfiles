#!/bin/sh

CPU0=`sensors | grep "Core 0" | awk '{print $3}' | tr -d '+°C'`
CPU1=`sensors | grep "Core 2" | awk '{print $3}' | tr -d '+°C'`
CPU0=`python -c "print(round($CPU0))"`
#CPU1=`python -c "print(round($CPU1))"`

HDD=`nc localhost 7634 | cut -d '|' -f4`
GPU=`nvidia-smi -a | grep "GPU Current Temp" | awk '{print $5}'`

echo '{"full_text": "CPU: "},'
if [ $CPU0 -lt 80 ]; then
	  echo '{"full_text": "'${CPU0}'°C", "color": "#91DE87"},'
else
	  if [ $CPU0 -lt 90 ]; then
        echo '{"full_text": "'${CPU0}'°C", "color": "#DEDD87"},'
	  else
		    echo '{"full_text": "'${CPU0}'°C", "color": "#DE8788"},'
	  fi
fi

echo '{"full_text": "HDD: "},'
if [ $HDD -lt 50 ]; then
    echo '{"full_text": "'${HDD}'°C", "color": "#91DE87"},'
else
    if [ $HDD -lt 70 ]; then
        echo '{"full_text": "'${HDD}'°C", "color": "#DEDD87"},'
    else
        echo '{"full_text": "'${HDD}'°C", "color": "#DE8788"},'
    fi
fi

echo '{"full_text": "GPU: "},'
if [ $GPU -lt 50 ]; then
    echo '{"full_text": "'${GPU}'°C", "color": "#91DE87"},'
else
    if [ $GPU -lt 70 ]; then
        echo '{"full_text": "'${GPU}'°C", "color": "#DEDD87"},'
    else
        echo '{"full_text": "'${GPU}'°C", "color": "#DE8788"},'
    fi
fi
    
