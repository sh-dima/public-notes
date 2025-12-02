#!/usr/bin/env python3
from os import path
from math import ceil

def is_valid(id_number: int) -> bool:
	string = str(id_number)
	length = len(string)

	if length == 1:
		return True

	for l in range(1, ceil(length / 2) + 1):
		if length % l != 0:
			continue

		substring = string[0:l]
		substrings = set(string[x:x+l] for x in range(0, length, l))
		
		if len(substrings) == 1:
			return False

	return True

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	ranges = file.readlines()[0].split(",")

id_sum = 0

for id_range in ranges:
	split = id_range.split("-")

	minimum = int(split[0])
	maximum = int(split[1])

	for id_number in range(minimum, maximum+1):
		if not is_valid(id_number):
			id_sum += id_number

print(id_sum)
