#!/usr/bin/env python

import os

images = '        "images":              ['
tab    = "                                "

basedir = 'ext'

archivos = [ f for f in os.listdir(basedir)
             if os.path.isfile(os.path.join(basedir,f))]

for i in range(len(archivos)):
    if i > 0 and i < len(archivos):
        images += tab
    images += '"' + basedir + '/' + archivos[i] + '"'
    if i == len(archivos)-1:
        images += '],'
    else:
        images += ',\n'

print(images)
