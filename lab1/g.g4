grammar g;

sPrime: cPrime aPrime cPrime bPrime; // S -> CACB

cPrime: (A cPrime2); // C -> aC'

cPrime2: (A cPrime2 | B cPrime2 | C cPrime2 |); // C' -> aC' | bC' | cC' | ɛ

aPrime: (B aPrime2); // A -> bA'

aPrime2: (A bPrime | B cPrime |); // A' -> aB | bC | ɛ

bPrime: (C bPrime2); // B -> cB'

bPrime2: (bPrime |); // B' -> B | ɛ

/* TOKENS */
A: 'a';
B: 'b';
C: 'c';