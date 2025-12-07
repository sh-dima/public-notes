#!/usr/bin/env python3
from os import path

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	inputs = [list(line.strip()) for line in file.readlines()]

height = len(inputs)

start_x = inputs[0].index("S")
start_y = 0
current_y = start_y

beams = [(start_x, start_y)]

split_count = 0

while current_y < height-1:
	beams = list(filter(lambda x:x is not None,beams))
	for i in range(len(beams)):
		beam = beams[i]

		if beam is None:
			continue

		(x, y) = beam

		under = (x, y+1)
		cell = inputs[y+1][x]

		beams[i] = None
		if cell == ".":
			if under not in beams:
				beams[i] = under
		elif cell == "^":
			right = (x+1,y+1)
			left = (x-1,y+1)

			if left not in beams:
				beams.append(left)
			if right not in beams:
				beams.append(right)
			split_count += 1
	current_y += 1

print(split_count)
