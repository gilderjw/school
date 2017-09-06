----------------------- MODULE SimpleXmissionProtocol -----------------------

EXTENDS Integers, Sequences
(*
--fair algorithm SimpleTransmissionProtocol {
    variable senderBuffer \in [Int -> Int], receiverBuffer = <<>>, channel = -2, previous = -2, initBuffer = senderBuffer, canRecv = FALSE;
    process(sender = 0) {
    s1: while(Len(senderBuffer) >= 1) {
        
            await canRecv = FALSE;
        
            channel := senderBuffer[1];
            senderBuffer := Tail(senderBuffer);
            canRecv := TRUE;
        };
        await canRecv = FALSE;
        
        canRecv := TRUE;
        channel := -1; \* -1 means null
    }
    
    
    process(receiver = 1) {
    p1: while(channel # -1) {
            await canRecv = TRUE;
            receiverBuffer := Append(receiverBuffer, channel);
            previous := channel;
            
            canRecv := FALSE;
        };
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES senderBuffer, receiverBuffer, channel, previous, initBuffer, 
          canRecv, pc

vars == << senderBuffer, receiverBuffer, channel, previous, initBuffer, 
           canRecv, pc >>

ProcSet == {0} \cup {1}

Init == (* Global variables *)
        /\ senderBuffer \in [Int -> Int]
        /\ receiverBuffer = <<>>
        /\ channel = -2
        /\ previous = -2
        /\ initBuffer = senderBuffer
        /\ canRecv = FALSE
        /\ pc = [self \in ProcSet |-> CASE self = 0 -> "s1"
                                        [] self = 1 -> "p1"]

s1 == /\ pc[0] = "s1"
      /\ IF Len(senderBuffer) >= 1
            THEN /\ canRecv = FALSE
                 /\ channel' = senderBuffer[1]
                 /\ senderBuffer' = Tail(senderBuffer)
                 /\ canRecv' = TRUE
                 /\ pc' = [pc EXCEPT ![0] = "s1"]
            ELSE /\ canRecv = FALSE
                 /\ canRecv' = TRUE
                 /\ channel' = -1
                 /\ pc' = [pc EXCEPT ![0] = "Done"]
                 /\ UNCHANGED senderBuffer
      /\ UNCHANGED << receiverBuffer, previous, initBuffer >>

sender == s1

p1 == /\ pc[1] = "p1"
      /\ IF channel # -1
            THEN /\ canRecv = TRUE
                 /\ receiverBuffer' = Append(receiverBuffer, channel)
                 /\ previous' = channel
                 /\ canRecv' = FALSE
                 /\ pc' = [pc EXCEPT ![1] = "p1"]
            ELSE /\ pc' = [pc EXCEPT ![1] = "Done"]
                 /\ UNCHANGED << receiverBuffer, previous, canRecv >>
      /\ UNCHANGED << senderBuffer, channel, initBuffer >>

receiver == p1

Next == sender \/ receiver
           \/ (* Disjunct to prevent deadlock on termination *)
              ((\A self \in ProcSet: pc[self] = "Done") /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION
PartialCorrectness == (\A self \in ProcSet: pc[self] = "Done") => /\ receiverBuffer = initBuffer
                                                                  /\ senderBuffer =  <<>>  
=============================================================================
\* Modification History
\* Last modified Thu May 18 21:00:06 EDT 2017 by jeem
\* Created Tue May 16 17:24:26 EDT 2017 by jeem
