---- MODULE MC ----
EXTENDS GCD, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_149429057867419000 ==
-1000..1000
----
\* Constant expression definition @modelExpressionEval
const_expr_149429057867420000 == 
setMax(divisorsOf(493))
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_149429057867420000>>)
----

=============================================================================
\* Modification History
\* Created Mon May 08 20:42:58 EDT 2017 by jeem
