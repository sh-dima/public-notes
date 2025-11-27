= Cuachy Functional Equation

$
	f: ZZ -> ZZ, f(x + y) &= f(x) + f(y)
$

== Solution

Claim: $f$ is a linear function $f(x) = c x$ for some $c in ZZ$.

*Proof by contradiction:*

Let $c = f(1)$

Assume $f$ is not a linear function. Therefore, there exists at least one value of $x$ such that $f(x) != c x$. $x = 1$ will not work as $f(1) = 1 times c$.

Consider the smallest positive $x$ such that $f(x) != c x$. As $x$ is minimal, $f(x - 1) = c(x - 1)$. However, $f(x) = f(x - 1 + 1) = f(x - 1) + f(1)$ because of the functional equation, meaning $f(x) = c(x - 1) + c = c x - cancel(c) + cancel(c) = c x$, which is a contradiction. Therefore, there are no positive counterexamples.

For $f(0)$ we have the following: $f(x) = f(x + 0) = f(x) + f(0)$. By subtracting $f(x)$ from both sides we get $0 = f(0)$.

For negative numbers we have the following:

Let $x > 0$, then $-x$ is negative:

$
	f(-x) &= f(0 + (-x)) \
	&= f(0) + f(-x) \
	&= f(x + (-x)) + f(-x) \
	&= f(x) + f(-x) + f(-x) \
	f(-x) &= f(x) + 2f(-x) &&| -f(-x) - f(x) \
	==> -f(x) &= f(-x) \
	==> -c x &= f(-x)
$

Therefore, $f(x)$ is a linear function $c times x$.
