fact(1, 1).
fact(X, S):-
    X1 is X - 1,
    fact(X1, S1),
    S is S1 * X, !.