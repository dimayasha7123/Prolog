sum2(1, 1).
sum2(X, S):-
    X1 is X - 2,
    sum2(X1, S1),
    S is S1 + X, !.