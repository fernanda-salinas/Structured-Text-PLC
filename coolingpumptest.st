/*
SIMPLE PROGRAM TO TEST COOLING PUMP WITH STRUCTURED TEXT PROGRAMMING LANGUAGE. 
Main Program is used to turn on/off the pump while the CAN communication is in CheckCAN. 

If the pump is stopped, we must wait x seconds in order to turn it on again. This is done
for pump protection.

*/

IGNITION := (START OR IGNITION) AND NOT LOCKED AND NOT STOP;


IF STOP THEN
    LOCKED := TRUE;
    tonIn := TRUE;
END_IF

tonSecurityTime(
    IN := tonIn,
    PT := T#10S );
    
IF tonSecurityTime.Q  THEN
    LOCKED := FALSE;
    tonIn := FALSE;
END_IF 



