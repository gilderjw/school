----------------------------- MODULE DieHarder -----------------------------
EXTENDS Integers

CONSTANTS Goal, Jugs, Capacity

min(m, n) == IF m < n THEN m ELSE n

ASSUME  /\ Goal \in Nat \ {0}
        /\ Capacity \in [Jugs -> Nat \ {0}]
        
(*
--algorithm DieHarder {
    variable injug = [j \in Jugs |-> 0]; {
        while(TRUE){
            \* Fill jug j
            either with (j \in Jugs) {
                injug[j] := capacity[j]
            } 
            \* Empty jug j
            \* move water from jug j to jug k
        }
    }
}
*) 

=============================================================================
\* Modification History
\* Last modified Mon May 08 16:15:11 EDT 2017 by gilderjw
\* Created Mon May 08 16:07:09 EDT 2017 by gilderjw
