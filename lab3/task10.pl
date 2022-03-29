hooman(kolya).
hooman(petya).
hooman(yura).
hooman(tanya).
hooman(zina).
hooman(galya).

love(X, Y):-
    hooman(X),
    hooman(Y).

loveCircle(A, B, C, D, E, F):-
    hooman(A),
    hooman(B),
    hooman(C),
    hooman(D),
    hooman(E),
    hooman(F),

    A \= B, A \= C, A \= D, A \= E, A \= F,
    B \= C, B \= D, B \= E, B \= F,
    C \= D, C \= E, C \= F,
    D \= E, D \= F,
    E \= F,

    love(A, B),
    A = kolya,

    love(B, C),
    
    love(C, D),
    C = zina,
    
    

