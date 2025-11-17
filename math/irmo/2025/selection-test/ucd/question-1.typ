= 2025 Irish Maths Olympiad UCD Selection Test Question I

9 December, 2024

Let $a, b in RR$. Prove that

$
	a^3b + b^3a &<= a^4 + b^4
$

== Solutions

=== Solution I: Proof by Cases

$
	a^3b + b^3a &<= a^4 + b^4 \
	<==> 0 &<= a^4 -a^3b + b^4 - b^3a \
	<==> 0 &<= a^3(a - b) - b^3(a - b) \
	<==> 0 &<= (a^3 - b^3)(a - b)
$

==== Case I: $a >= b$

$
	a >= b &==> a - b >= 0 \
	a >= b => a^3 >= b^3 &==> a^3 - b^3 >= 0 \
	\
	&==> (a - b)(a^3 - b^3) >= 0
$

==== Case II: $a < b$

$
	a < b &==> a - b < 0\
	a < b => a^3 < b^3 &==> a^3 - b^3 < 0
	\
	&==> (a - b)(a^3 - b^3) > 0
$
