#!/usr/bin/env python3
from os import path
from math import ceil

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	banks = [x.strip() for x in file.readlines()]

joltage = 0

for bank in banks:

	maximum = 0
	maximum_index = 0

	for index in range(0, len(bank) - 1):
		digit = bank[index]
		number = int(digit)

		if number > maximum:
			maximum = number
			maximum_index = index

	second_maximum = 0

	for index in range(maximum_index + 1, len(bank)):
		digit = bank[index]
		number = int(digit)

		if number > second_maximum:
			second_maximum = number

	joltage += 10 * maximum + second_maximum

print(joltage)
