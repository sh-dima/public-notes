= 2026 Irish Maths Olympiad UCD Selection Test Question IV

Prove that for all nonnegative $a, b, c in RR$ with $a + b + c <= 1$:

$
	9/4 <= 1/(a + 1) + 1/(b + 1) + 1/(c + 1) <= 3
$

== Solution

=== First Half ($<= 3$)

For all $x = a, b, c$, the fraction $1/(1+x) <= 1$, therefore the sum must be $<= 3$:

$
	x &>= 0 \
	==> 1 + x &>= 1 \
	==> 1/(1 + x) &<= 1
$

=== Second Half ($>= 9/4$)

Applying the #link("../../../theorems/cauchy-schwarz.typ", "Cauchy-Schwarz inequality") to $x_1 = 1/sqrt(a + 1), x_2 = 1/sqrt(b + 1), x_3 = 1/sqrt(c + 1)$ and $y_1 = sqrt(a + 1), y_2 = sqrt(b + 1), y_3 = sqrt(c + 1)$:

$
	&==> (x_1y_1 + x_2y_2 + x_3y_3)^2 &&<= (x_1^2 + x_2^2 + x_3^2)(y_1^2 + y_2^2 + y_3^2) \
	&<==> (1 + 1 + 1)^2 &&<= (1/(a + 1) + 1/(b + 1) + 1/(c + 1))(a + 1 + b + 1 + c + 1) \
	&<==> 9 &&<= (1/(a + 1) + 1/(b + 1) + 1/(c + 1))(a + b + c + 3) \
	&<==> 9/(a + b + c + 3) &&<= 1/(a + 1) + 1/(b + 1) + 1/(c + 1)
$

*Lemma*: $9 / (a + b + c + 3) >= 9/4$:

*Proof*:

$
	a + b + c &<= 1 \
	==> a + b + c + 3 &<= 4 \
	==> 1/(a + b + c + 3) &>= 1/4 \
	==> 9/(a + b +c + 3) &>= 9/4
$

Therefore:

$
	9/4 <= 9/(a + b + c + 3) &<= 1/(a + 1) + 1/(b + 1) + 1/(c + 1) \
	==> 9/4 &<= 1/(a + 1) + 1/(b + 1) + 1/(c + 1)
$
