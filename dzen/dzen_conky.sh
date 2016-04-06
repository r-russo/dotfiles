 #!/bin/sh
 
source ~/.dzen/conf.sh

conky -c ~/.conky/dwmrc | dzen2 -p -e 'onstart=upper' -fn $FN -bg $BG -fg $FG -h 14
