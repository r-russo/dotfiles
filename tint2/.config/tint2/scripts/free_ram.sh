#!/bin/bash

awk '/^Mem/ {printf("%u%%\n", 100*$3/$2);}' <(free -m)
