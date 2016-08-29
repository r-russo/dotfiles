#!/usr/bin/env python3

import os
from configs import *

"""
This script generates both themes from a template so I don't have to do it
by hand
"""

OB_CONFIG_FILE   = "~/.themes/minimal-border/openbox-3/themerc"
TINT_CONFIG_FILE = "~/.config/tint2/tint2_template"

ob = open(os.path.expanduser(OB_CONFIG_FILE), 'w')
print("Updating Openbox theme...")
config = ob_config()
if config == None:
    exit()
ob.write(config)
ob.close()
print("Done")

tint2 = open(os.path.expanduser(TINT_CONFIG_FILE), 'w')
print()
print("Updating tint2 theme...")
config = tint2_config()
if config == None:
    exit()
tint2.write(config)
tint2.close()
print("Done")

print()
print("Setting updated succesfully")
