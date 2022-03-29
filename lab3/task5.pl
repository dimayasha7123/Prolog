town(moscow).
town(spb).
town(novgorod).
town(perm).
town(tomsk).

kid(yura).
kid(tolya).
kid(alesha).
kid(kolya).
kid(vitya).

livein(K, T):-
    kid(K),
    town(T),
    not((K = vitya, T = moscow)),
    not((K = vitya, T = tomsk)),
    not((K = yura, T = spb)),
    not((K = tolya, T = spb)),
    not((K = alesha, T = spb)),
    not((K = yura, T = perm)),
    not((K = tolya, T = perm)),
    not((K = alesha, T = perm)),
    not((K = kolya, T = spb)),
    not((K = yura, T = moscow)),
    not((K = yura, T = tomsk)),
    not((K = tolya, T = tomsk)).

solve(K1, T1, K2, T2, K3, T3, K4, T4, K5, T5) :-
    livein(K1, T1),
    livein(K2, T2),
    livein(K3, T3),
    livein(K4, T4),
    livein(K5, T5),
    K1 \= K2, K1 \= K3, K1 \= K4, K1 \= K5,
    K2 \= K3, K2 \= K4, K2 \= K5,
    K3 \= K4, K3 \= K5,
    K4 \= K5,
    T1 \= T2, T1 \= T3, T1 \= T4, T1 \= T5,
    T2 \= T3, T2 \= T4, T2 \= T5,
    T3 \= T4, T3 \= T5,
    T4 \= T5, !.
