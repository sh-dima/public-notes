= 2026 Irish Maths Olympiad UCD Selection Test Question I

Prove that there are infinitely many positive integers $x$ such that $2x$ is a perfect square and $3x$ is a perfect cube.

== Solution

For all $(p, q, r) in ZZ^3$, $x = r^6 times 2^(6p + 3) times 3^(6q + 2)$ satisfies this condition because:

$
	2x &= r^6 times 2^(6p + 3) times 2 times 3^(6q + 2) \
	   &= r^6 times 2^(6p + 4) times 3^(6q + 2) \
	   &= r^(3 times 2) times 2^((3p + 2) times 2) times 3^((3q + 1) times 2) \
	   &= (r^3)^2 times (2^(3p + 2))^2 times (3^(3q + 1))^2 \
	   &= (r^3 times 2^(3p + 2) times 3^(3q + 1))^2 \
	\
	3x &= r^6 times 2^(6p + 3) times 3^(6q + 2) times 3 \
	   &= r^6 times 2^(6p + 3) times 3^(6q + 3) \
	   &= r^(2 times 3) times 2^((2p + 1) times 3) times 3^((2q + 1) times 3) \
	   &= (r^2)^3 times (2^(2p + 1))^3 times (3^(2q + 1))^3 \
	   &= (r^2 times 2^(2p + 1) times 3^(2q + 1))^3 \
$
