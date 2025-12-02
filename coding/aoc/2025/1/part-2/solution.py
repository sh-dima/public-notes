#!/usr/bin/env python3
from os import path
from math import copysign

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	lines = [x.strip() for x in file.readlines()]

number = 50
zero_count = 0

for line in lines:
	current = number
	
	direction = line[0]
	sign = -1 if direction == "L" else 1
	
	distance = int(line[1:])

	increase = distance // 100
	distance %= 100

	number += distance * sign

	if (number >= 100 or number <= 0) and current != 0:
		increase += 1

	number %= 100

	zero_count += increase

print(zero_count)
