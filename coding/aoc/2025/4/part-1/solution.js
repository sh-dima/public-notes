#!/usr/bin/env node
const { readFileSync } = require("fs");

const rows = readFileSync(`${__dirname}/input.txt`).toString().split("\n");

const length = rows[0].length;
const height = rows.length;

let count = 0;

for (let x = 0; x < length; x++) {
	for (let y = 0; y < height; y++) {
		const cell = rows[y][x];

		if (cell != "@") continue;

		const topLeft = rows[y - 1]?.[x - 1];
		const top = rows[y - 1]?.[x];
		const topRight = rows[y - 1]?.[x + 1];

		const left = rows[y]?.[x - 1];
		const right = rows[y]?.[x + 1];

		const bottomLeft = rows[y + 1]?.[x - 1];
		const bottom = rows[y + 1]?.[x];
		const bottomRight = rows[y + 1]?.[x + 1];

		if (
			[
				topLeft,    top,    topRight,
				left,               right,
				bottomLeft, bottom, bottomRight,
			].filter((neighbour) => neighbour == "@").length < 4
		) count++;
	}
}

console.log(count);
