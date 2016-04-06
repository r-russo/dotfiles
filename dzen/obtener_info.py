import sys,os

_,arg = sys.argv

arg = arg.split(':')

monitor = arg[0]
escritorios = arg[1:-1]
layout = arg[-1]

ocupado = "#dddddd"
activo = os.environ['ICONO']
urgente = "#ff5f5f"
laycolor = "#ffffff"

salida = ""
cont = 1

for i in escritorios:
    salida += r"^ca(1,bspc desktop -f ^" + str(cont) + ")"
    cont += 1
    if i[0] == i[0].upper():
        salida += r"^fg(" + activo + ")"
    elif i[0] == "o":
        salida +=r"^fg(" + ocupado + ")"
    else:
        salida += r"^fg()"

    salida += str(i[1:])
    salida += "^ca() "

salida += r"^ca(1,bspc desktop -l next)^fg(" + laycolor + ")["
if layout[1:] == "tiled":
    salida += "t"
else:
    salida += "m"
salida += "]^ca()"

print(salida)
        
