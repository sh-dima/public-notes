#!/usr/bin/env python3
from os import path

def size(interval: tuple[int, int]):
	return interval[1] - interval[0] + 1

with open(f"{path.dirname(path.realpath(__file__))}/input.txt") as file:
	inputs = file.read()

[intervals, ids] = (x.split("\n") for x in inputs.split("\n\n"))

intervals = [[x[0], x[1]] for x in (set((int(x.split("-")[0]), int(x.split("-")[1])) for x in intervals))]
intervals = sorted(intervals, key=lambda interval: interval[0])

for index in range(len(intervals)):
	a = intervals[index]

	if index != len(intervals) - 1:
		[minimum, maximum] = a

		b = intervals[index+1]
		(next_minimum, next_maximum) = b

		if (next_minimum <= maximum):
			intervals[index][1] = next_minimum - 1

		if (next_maximum < maximum):
			intervals[index + 1][1] = maximum

total = 0
for interval in intervals:
	total += size(interval)

print(total)
