#!/usr/bin/env python3
from os import path

def is_valid(id_number: int) -> bool:
	string = str(id_number)
	length = len(string)

	if length == 1:
		return True

	if length % 2 != 0:
		return True

	return string[0:int(length/2)] != string[int(length/2):]

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
