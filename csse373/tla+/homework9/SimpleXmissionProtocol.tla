----------------------- MODULE SimpleXmissionProtocol -----------------------

EXTENDS Integers, Sequences
(*
--fair algorithm SimpleTransmissionProtocol {
    variable senderBuffer \in [Int -> Int], receiverBuffer = <<>>, channel = "init", previous = "";
    
    process(sender = 0) {
    s1: while(Len(senderBuffer) >= 1) {
            channel := Tail(senderBuffer)
        };
        channel := "Null";
    }
    
    
    process(receiver = 1) {
    p1: while(channel # "Null") {
            if(channel # previous) {
                receiverBuffer := Append(receiverBuffer, channel);
                previous := channel
            };
        };
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES senderBuffer, receiverBuffer, channel, previous, pc

vars == << senderBuffer, receiverBuffer, channel, previous, pc >>

ProcSet == {0} \cup {1}

Init == (* Global variables *)
        /\ senderBuffer \in [Int -> "thing"]
        /\ receiverBuffer = <<>>
        /\ channel = "init"
        /\ previous = ""
        /\ pc = [self \in ProcSet |-> CASE self = 0 -> "s1"
                                        [] self = 1 -> "p1"]

s1 == /\ pc[0] = "s1"
      /\ IF Len(senderBuffer) >= 1
            THEN /\ channel' = Tail(senderBuffer)
                 /\ pc' = [pc EXCEPT ![0] = "s1"]
            ELSE /\ channel' = "Null"
                 /\ pc' = [pc EXCEPT ![0] = "Done"]
      /\ UNCHANGED << senderBuffer, receiverBuffer, previous >>

sender == s1

p1 == /\ pc[1] = "p1"
      /\ IF channel # "Null"
            THEN /\ IF channel # previous
                       THEN /\ receiverBuffer' = Append(receiverBuffer, channel)
                            /\ previous' = channel
                       ELSE /\ TRUE
                            /\ UNCHANGED << receiverBuffer, previous >>
                 /\ pc' = [pc EXCEPT ![1] = "p1"]
            ELSE /\ pc' = [pc EXCEPT ![1] = "Done"]
                 /\ UNCHANGED << receiverBuffer, previous >>
      /\ UNCHANGED << senderBuffer, channel >>

receiver == p1

Next == sender \/ receiver
           \/ (* Disjunct to prevent deadlock on termination *)
              ((\A self \in ProcSet: pc[self] = "Done") /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION

=============================================================================
\* Modification History
\* Last modified Tue May 16 17:47:05 EDT 2017 by jeem
\* Created Tue May 16 17:24:26 EDT 2017 by jeem
