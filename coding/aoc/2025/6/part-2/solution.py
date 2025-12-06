#!/usr/bin/env python3
from os import path

def not_whitespace(string: str) -> bool:
	return string.strip() != ""

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	rows = file.read().split("\n")

height = len(rows)
width = len(list(filter(not_whitespace, rows[0].split(" "))))

operations = list(filter(not_whitespace, rows[height-1].split(" ")))
summation = 0

for w in range(width):
	operation = operations[w]

	if operation == "+":
		function = lambda x, y: x + y
		total = 0
	elif operation == "*":
		function = lambda x, y: x * y
		total = 1

	max_length = 0

	for h in range(height-1):
		row = rows[h]
		split = list(filter(not_whitespace, row.split(" ")))
		number = split[0]
		if len(number) > max_length:
			max_length = len(number)

	for d in range(max_length):
		built_number = ""

		for h in range(height-1):
			row = rows[h]
			digit = row[d]

			if digit != " ":
				built_number += digit

		total = function(total, int(built_number))

	for h in range(height-1):
		rows[h] = rows[h][max_length+1:]

	summation += total

print(summation)
