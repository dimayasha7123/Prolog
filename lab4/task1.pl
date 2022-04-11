sum(0, 0).
sum(X, S):-
    X1 is X - 1,
    sum(X1, S1),
    S is S1 + X, !.