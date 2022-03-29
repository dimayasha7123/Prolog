
tree(sosna).
tree(bereza).
tree(lipa).
tree(topol).
tree(el).
tree(klen).

%less(X, Z, rule):- less(X, Y, fact), less(Y, Z, _).

less(bereza, topol, fact).
less(klen, lipa, fact).
less(sosna, el, fact).
less(lipa, bereza, fact).
less(topol, sosna, fact).

placement(A, B, C, D, E, F):-
    tree(A),
    tree(B),
    tree(C),
    tree(D),
    tree(E),
    tree(F),
    A \= B, A \= C, A \= D, A \= E, A \= F,
    B \= C, B \= D, B \= E, B \= F,
    C \= D, C \= E, C \= F,
    D \= E, D \= F,
    E \= F,

    less(A, B, _),
    less(B, C, _),
    less(C, D, _),
    less(D, E, _),
    less(E, F, _), !.


left(A):-
    placement(A, _, _, _, _, _).

right(A):-
    placement(_, _, _, _, _, A).

leftAndRight(L, R):-
    left(L),
    right(R).