sum3(1, 1).
sum3(0, 0).
sum3(X, S):-
    X1 is X - 2,
    sum3(X1, S1),
    S is S1 + X, !.