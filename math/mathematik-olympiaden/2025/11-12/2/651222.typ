= 65th Mathematik-Olympiade Round 2 Question 2 - 11-12th Class

Let $p < q < r < s in ZZ^+$ such that:
+ $p$ and $q$ are prime.
+ $c = r - q = q - p$
+ $c != 2^n$, $n in ZZ^+$
+ $s = 2r$
+ $p + q + r > s$
+ $3 | S = p + q + r + s$

Find the minimum value of $P = p q r s$.

== Solution

We can write $q$, $r$, $s$, and consequently $S$ in terms of $p$ and $c$.

$
	p, q, r, s &= p, p +c, p + 2c, 2p + 4c \ \

	S &= p + q + r + s \ 
	&= p + (p + c) + (p + 2c) + (2p + 4c) \
	&= 5p + 7c
$

This allows us to simplify condition (5):

$
	p + q + r &> s \
	==> p + (p + c) + (p + 2c) &> (2p + 4c) \
	==> 3p + 3c &> 2p + 4c \
	==> p &> c
$

*Lemma*: $q$ is odd

*Proof by Contradiction*: Assume $q$ is even. The only even prime number is $2$, however $p < q$ is also a prime number, but there are no prime numbers $< 2$, resulting in a contradiction.

If $p$ is even, $p = 2$ because it is prime. $==> c = 1$ because $p > c > 0$.

$
	==> S = 2 + 3 + 4 + 8 = 17
$

However, $3 divides.not 17$, so $p != 2 ==> p$ is odd.

Since both $p$ and $q$ are odd, $c = q - p$ is even. $c != 2$ and $c != 4$ because of condition (3). So $6$ is the minimum value of $c$.

If $c = 6$, $S = 5p + 7(6) = 5p + 42$:
$
	3 &| 5p + 42 \
	==> 5p + 42 &equiv 0 && mod 3 \
	==> 5p &equiv 0 && mod 3 \
	+ (0 &equiv 15 && mod 3) \
	==> 5p &equiv 15 && mod 3 \
	==> p &equiv 3 equiv 0 && mod 3 \
	==> 3 &| p
$

Since $p$ is prime, $p = 3$. However, $3 gt.not 6$ so condition (5) is not satisfied.

$c != 8$ because $8 = 2^3$. Therefore, $c = 10$ is minimal.

If $c = 10$:
$
	S &= 5p + 70 \
	3 &| 5p + 70 \
	==> 5p + 70 &equiv 0 && mod 3 \
	==> 5p &equiv -70 && mod 3 \
	+(0 &equiv 75 && mod 3) \
	==> 5p &equiv 5 && mod 3 \
	==> p &equiv 1 && mod 3 \
	==> p &= 3k + 1 && k in ZZ \
	==> p &in {1, 4, 7, 10, 13, ...}
$

We must only conisder prime values $> c = 10$. This smallest value is $13$. Trying $p = 13$, we get:

$
	p, q, r, s &= 13, 23, 33, 66 \
	p + q + r &= 13 + 23 + 33 = 69 > 66 \
	p + q + r + s &= 13 + 23 + 33 + 66 = 135, 3 | 135
$

If $c >= 12$, then $p > c >= 12$, meaning $p = 13$ is the absolute smallest value we can have for $p$.

$P = p(p + c)(p + 2c)(2p + 4c)$ is minimal when $p$ and $c$ are minimal. We have shown that $c = 10$ and $p = 13$ are minimal.

$P &= p q r s = (13)(23)(33)(66) = 651222$
