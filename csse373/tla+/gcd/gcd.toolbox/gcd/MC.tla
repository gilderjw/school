---- MODULE MC ----
EXTENDS gcd, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_14942723962896000 ==
0..15
----
\* Constant expression definition @modelExpressionEval
const_expr_14942723962897000 == 
GCD(12, 8)
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_14942723962897000>>)
----

=============================================================================
\* Modification History
\* Created Mon May 08 15:39:56 EDT 2017 by gilderjw
