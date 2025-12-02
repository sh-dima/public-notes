#!/usr/bin/env python3
from os import path

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	lines = list(map(lambda x : x.strip(), file.readlines()))

number = 50
zero_count = 0

for line in lines:
	direction = line[0]
	line = line[1:]

	number += int(line) * (1 if direction == "R" else -1)

	if number % 100 == 0:
		zero_count += 1

print(zero_count)
