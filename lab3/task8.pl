man(yura).
man(misha).
man(volodya).
man(sasha).
man(oleg).

less(yura, misha, fact).
less(oleg, yura, fact).

less(X, Z, rule):- less(X, Y, fact), less(Y, Z, _).

placement(A, B, C, D, E):-
    man(A),
    man(B),
    man(C),
    man(D),
    man(E),
    
    A \= B, A \= C, A \= D, A \= E,
    B \= C, B \= D, B \= E,
    C \= D, C \= E,
    D \= E,

    less(A, B, _),
    less(B, C, _),
    less(C, D, _),
    less(D, E, _).