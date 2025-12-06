#!/usr/bin/env python3
from os import path

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	inputs = [list(filter(lambda x: x != "", map(lambda x: x.strip(), x.split(" ")))) for x in file.readlines()]

height = len(inputs)
width = len(inputs[0])

summation = 0

for x in range(width):
	operation = inputs[height - 1][x]

	if operation == "+":
		function = lambda x, y: x + y
		total = 0
	elif operation == "*":
		function = lambda x, y: x * y
		total = 1	

	for y in range(height-1):
		total = function(total, int(inputs[y][x]))
	
	summation += total

print(summation)
