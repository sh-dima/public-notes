= 2025 Irish Maths Olympiad Question I

25 January, 2025

Find all pairs $(p, n)$ of positive integers such that:
- $p$ is the smallest positive integer that is not a factor of $n$
- $n$ is a factor of $3p^2 + 1$

== Solution

$p != 1$, because $1$ always divides $n$.

The minimality of $p$ implies that $p - 1 divides n ==> p - 1 divides 3p^2 + 1$.

$
	==> p - 1 &| 3p^2 + 1 + (p - 1) = 3p^2 + p = p(3p + 1)
$

\

*Lemma*: $gcd(p, p - 1) = 1$

*Proof*:

$
	"Let" k &= gcd(p, p - 1) \
	==>  k &| p "and" k | p - 1 \
	==> k &| 1 ==> k = 1
$

\

$
	p - 1 | p(3p + 1) &==> p - 1 | 3p + 1 "because" gcd(p - 1, p) = 1 \
	p - 1 | 3p + 1 &==> p - 1 | 3p + 1 - 3(p - 1) = 4 ==> p - 1 in {1, 2, 4} ==> p in {2, 3, 5}
$

$
	&==> p in {2, 3, 5}\
	&==> 3p^2 + 1 in {13, 28, 76}
$

If $p = 2$, $n | 3(2)^2 + 1 = 13 ==> n in {1, 13}$:
- $(2, 1)$ is a solution
- $(2, 13)$ is a solution

If $p = 3$, $n | 3(3)^2 + 1 = 28 ==> n in {1, 2, 4, 7, 14, 28}$:
- $(3, 1)$ is not a solution as $2 < 3$ is not a factor of $1$.
- $(3, 2)$ is a solution.
- $(3, 4)$ is a solution.
- $(3, 7)$ is not a solution as $2 < 3$ is not a factor of $7$.
- $(3, 14)$ is a solution.
- $(3, 28)$ is a solution.

If $p = 5$, $n | 3(5)^2 + 1 = 76 ==> n in {1, 2, 4, 19, 38, 76}$:
- $(5, 1)$ is not a solution as $2 < 5$ is not a factor of $1$.
- $(5, 2)$ is not a solution as $3 < 5$ is not a factor of $2$.
- $(5, 4)$ is not a solution as $3 < 5$ is not a factor of $4$.
- $(5, 19)$ is not a solution as $2 < 5$ is not a factor of $19$.
- $(5, 38)$ is not a solution as $3 < 5$ is not a factor of $38$.
- $(5, 76)$ is not a solution as $3 < 5$ is not a factor of $76$.

$
	==> S = {(2, 1), (2, 13), (3, 2), (3, 4), (3, 14), (3, 28)}
$
