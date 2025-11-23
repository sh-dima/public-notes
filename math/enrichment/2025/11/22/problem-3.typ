#show link: underline

= Problem III

Prove that for $a_i in RR$ and $x_i in RR^+$

$
	a_1^2/x_1 + a_2^2/x_2 + dots + a_n^2/x_n >= (a_1 + a_2 + dots + a_n)^2 / (x_1 + x_2 + dots + x_n)
$

== Solution

Applying the #link("../../../../theorems/cauchy-schwarz.typ", "cauchy-schwarz inequality") for $a_i / sqrt(x_i)$ and $sqrt(x_i)$ gives the following result:

$
	(a_1 / cancel(sqrt(x_1)) cancel(sqrt(x_1)) + a_2 / cancel(sqrt(x_2)) cancel(sqrt(x_2)) + dots + a_n / cancel(sqrt(x_n)) cancel(sqrt(x_n)))^2 &<= (a_1^2 / x_1 + a_2^2 / x_2 + dots + a_n^2 / x_n)(x_1 + x_2 + dots + x_n) \
	==> (a_1 + a_2 + dots + a_n)^2 &<= (a_1^2 / x_1 + a_2^2 / x_2 + dots + a_n^2 / x_n)(x_1 + x_2 + dots + x_n) &&| div (x_1 + x_2 + dots + x_n) \
	==> (a_1 + a_2 + dots + a_n)^2 / (x_1 + x_2 + dots + x_n) &<= (a_1^2 / x_1 + a_2^2 / x_2 + dots + a_n^2 / x_n)
$
