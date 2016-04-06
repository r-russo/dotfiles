#! /usr/bin/python

import sys

cadena=sys.argv[1]
w=sys.argv[2]
lineas=cadena.splitlines()

l = [len(linea) for linea in lineas]

print(int(max(l))*int(w))
