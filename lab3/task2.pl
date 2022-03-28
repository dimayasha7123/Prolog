name(borisov).
name(ivanov).
name(semenov).

job(slesar).
job(tokar).
job(svarschik).

worker(N, J):-
    name(N),
    job(J),
    not((N = borisov, J = slesar)),
    not((N = semenov, J = tokar)),
    not((N = semenov, J = slesar)).


older(N1, N2):-
    name(N1),
    name(N2).

solve(N1, J1, N2, J2, N3, J3):-
    name(N1),
    name(N2),
    name(N3),
    N1 \= N2,
    N1 \= N3,
    N2 \= N3,
    job(J1),
    job(J2),
    job(J3),
    J1 \= J2,
    J1 \= J3,
    J2 \= J3,
    worker(N1, J1),
    worker(N2, J2),
    worker(N3, J3), !.