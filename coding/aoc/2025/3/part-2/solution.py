#!/usr/bin/env python3
from os import path

batteries = 12

def get_max(substring: str) -> (int, int): # (maximum number, index of maximum number)
	maximum = 0
	maximum_index = 0

	for index in range(len(substring)):
		character = substring[index]
		number = int(character)

		if number > maximum:
			maximum_index = index
			maximum = number
	
	return (maximum, maximum_index)


def value(bank: str) -> int:
	length = len(bank)
	power = ""

	current_index = 0

	allowed = length - batteries + 1

	for index in range(batteries):
		allowed_substring = bank[current_index:allowed]

		(maximum, maximum_index) = get_max(allowed_substring)

		current_index += maximum_index + 1
		allowed += 1

		power += str(maximum)

	return int(power)

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	banks = [x.strip() for x in file.readlines()]

joltage = 0

for bank in banks:
	joltage += value(bank)

print(joltage)
