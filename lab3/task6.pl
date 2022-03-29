num(x).
num(y).
num(z).
num(t).

less(x, y, fact).
less(x, t, fact).
less(z, t, fact).
less(z, y, fact).
less(t, y, fact).
less(x, z, fact).

% не обязательно
less(X, Z, rule):- less(X, Y, fact), less(Y, Z, _).

placement(A, B, C, D):-
    num(A),
    num(B),
    num(C),
    num(D),
    A \= B, A \= C, A \= D,
    B \= C, B \= D,
    C \= D, 

    less(A, B, _),
    less(B, C, _),
    less(C, D, _), !.
