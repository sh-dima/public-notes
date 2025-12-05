#!/usr/bin/env python3
from os import path

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	inputs = file.read()

[ranges, ids] = (x.split("\n") for x in inputs.split("\n\n"))

ranges = [(int(x.split("-")[0]), int(x.split("-")[1])) for x in ranges]
ids = [int(x) for x in ids]

valid = 0

for number in ids:
	for (minimum, maximum) in ranges:
		if number >= minimum and number <= maximum:
			valid += 1
			break

print(valid)
