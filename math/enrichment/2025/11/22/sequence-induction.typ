= Sequence Induction Question

Let $a_n$ be a sequence defined by:

$
	a_n &= cases(
		1 &&"if" n = 1,
		(n + 1)/(n - 1)(a_1 + a_2 + dots + a_(n - 1)) &&"otherwise"
	)
$

Find $a_100$.

== Solution

Consider the first few values of $n$ and $a_n$:

#table(
	columns: (auto, auto),
	inset: 10pt,
	table.header(
		[*$n$*],
		[*$a_n$*],
	),

	$1$,
	$1$,

	$2$,
	$3 = (2 + 1)/(2 - 1)(1)$,

	$3$,
	$8 = (3 + 1)/(3 - 1)(1 + 3)$,

	$4$,
	$20 = (4 + 1)/(4 - 1)(1 + 3 + 8)$,

	$5$,
	$48 = (5 + 1)/(5 - 1)(1 + 3 + 8 + 20)$,
)

If we look at the factors of $a_n$, we can see a clear pattern:

#table(
	columns: (auto, auto, auto, auto),
	inset: 10pt,
	table.header(
		[*$n$*],
		[*$a_n$*],
		[Factorized],
		[Pattern],
	),

	$1$,
	$1$,
	$1$,
	$2 times 2^(-1)$,

	$2$,
	$3$,
	$3$,
	$3 times 2^0$,

	$3$,
	$8$,
	$2^3$,
	$4 times 2^1$,

	$4$,
	$20$,
	$2^2 times 5$,
	$5 times 2^2$,

	$5$,
	$48$,
	$2^4 times 3$,
	$6 times 2^3$
)

We can conjecture based on the pattern that $a_n = (n + 1) times 2^(n - 2)$.

*Proof by induction on $n$*:

Base case: $a_n = 1 = (1 + 1) times 2^(-1)$ $checkmark$

Induction step: assume the statement is true for $n = k$.

$
	P(k): a_k = (k + 1) times 2^(k - 2)
$

We are trying to prove the statement for $n = k + 1$.

$
	P(k + 1): a_(k + 1) = (k + 2) times 2^(k - 1)
$

A chain of if-and-only-if statements can be used to prove that $P(k)$ and $P(k + 1)$ are equivalent.

$
	&P(k + 1): &a_(k + 1) &= (k + 2) times 2^(k - 1) &&| a_(k + 1) = (k + 2)/(k)(a_1 + dots + a_k) \
	&<==> &cancel((k + 2))/(k)(a_1 + dots + a_k) &= cancel((k + 2)) times 2^(k - 1) &&| times k \
	&<==> &a_1 + dots + a_k &= k times 2^(k - 1) \
	&<==> &a_1 + dots + a_(k - 1) + a_k &= k times 2^(k - 1) \
	\
	&"From the definition of" a_n: \
	&&a_n &= (n + 1)/(n - 1)(a_1 + a_2 + dots + a_(n - 1)) \
	&==> &a_n (n - 1)/(n + 1) &= a_1 + a_2 + dots + a_(n - 1) \
	&"Therefore:" \
	&<==> &a_k (k - 1)/(k + 1) + a_k &= k times 2^(k - 1) \
	&<==> &a_k (1 + (k - 1)/(k + 1)) &= k times 2^(k - 1) \
	&<==> &a_k ((k + 1)/(k + 1) + (k - 1)/(k + 1)) &= k times 2^(k - 1) \
	&<==> &a_k ((k + 1 + k - 1)/(k + 1)) &= k times 2^(k - 1) \
	&<==> &a_k ((2cancel(k))/(k + 1)) &= cancel(k) times 2^(k - 1) &bar times (k + 1) div 2 \
	&<==> &a_k &= (k + 1) times 2^(k - 2)
$

which is $P(k)$.

Therefore $a_100 = 101 times 2^(98)$
