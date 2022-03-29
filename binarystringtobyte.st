// BINARY STRING TO BYTE EXAMPLE

string1 := '1000';
string2 := '1111';

// '#2' IS VITAL TO KNOW WE ARE WORKING WITH BASE 2, IF WE DON'T DO IT THIS WAY, THE PLC WILL TAKE THIS AS BASE 10 AND 
// THE CONVERSION TO BYTE WILL BE WRONG.

StringCombined := CONCAT ('#2', string1, string2); 

// Final conversion

FinalByte := TO_BYTE (StringCombined); // FUNCTION MAY VARY DEPENDING ON THE PLC SOFTWARE 