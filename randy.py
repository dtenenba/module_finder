#!/usr/bin/env python3

import random
import sys

with open("modules.txt" , "r") as f:
    for line in f:
        lines = f.readlines()
    
lines = [x.split("/")[0] for x in lines]

num = 4

if len(sys.argv) > 1:
    num = int(sys.argv[1])

for i in range(num):
    choice = random.choice(lines)
    print(choice, " ", end="")
    sys.stderr.write(f"{choice} ")
print()
sys.stderr.write("\n")

# run me like this:
# go run module_find.go `eval ./randy.py 5`

