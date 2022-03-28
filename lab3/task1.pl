podruga('Anya').
podruga('Valya').
podruga('Natasha').

dress('White').
dress('Green').
dress('Blue').

shoes('White').
shoes('Green').
shoes('Blue').

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    H = 'Anya',
    D = S.

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    H = 'Valya',
    D \= S,
    D \= 'White',
    S \= 'White'.

rule1(H, D, S) :-
    podruga(H),
    dress(D),
    shoes(S),
    D \= S,
    H = 'Natasha',
    S = 'Green'.

rule1common(H1, H2, H3) :-
    podruga(H1),
    podruga(H2),
    podruga(H3),
    rule1(H1, D1, S1),
    rule1(H2, D2, S2),
    rule1(H3, D3, S3),
    write(H1),write(': '), write(D1), write(' '), write(S1), nl,
    write(H2),write(': '), write(D2), write(' '), write(S2), nl,
    write(H3),write(': '), write(D3), write(' '), write(S3), nl, !. 


% rule1common('Anya', 'Valya', 'Natasha').