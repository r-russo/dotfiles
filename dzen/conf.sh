#!/bin/sh

FN="tewi-8"
#BG="#2D3238"
BG="#2B2B2B"
FG="#cacaca"
ICONOS=~/.icons/dzen-icons

DEV="enp3s0"
RX=`cat /sys/class/net/$DEV/statistics/rx_bytes`
TX=`cat /sys/class/net/$DEV/statistics/tx_bytes`
TIEMPO=`date +%s.%N`

# Íconos

VOL=$ICONOS/spkr_01.xbm
VOLM=$ICONOS/spkr_02.xbm
DISCO=$ICONOS/fs_01.xbm
RELOJ=$ICONOS/clock.xbm
MEM=$ICONOS/mem.xbm
MPD=$ICONOS/note.xbm
REPRODUCIENDO=$ICONOS/play.xbm
PAUSADO=$ICONOS/pause.xbm
DETENIDO=$ICONOS/stop.xbm
ICPU=$ICONOS/cpu.xbm
NET_UP=$ICONOS/net_up_03.xbm
NET_DOWN=$ICONOS/net_down_03.xbm
TEMP=$ICONOS/temp.xbm
PEND=$ICONOS/mail.xbm
MENU=$ICONOS/net_down_01.xbr

# Colores

VERDE="#94FF81"
ROJO="#FF5F5F"
AMARILLO="#E9FF78"
BLANCO="#FFFFFF"
export ICONO="#CD6565"

SEPARADOR="^fg($BLANCO)^r(2x2)^fg()"

BBG="#1A1516"
BFG="$ICONO"

SBG="$ICONO"
SFG="#000000"
