% 1

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
    write(H3),write(': '), write(D3), write(' '), write(S3). 


% rule1common('Anya', 'Valya', 'Natasha').

% 2

zavodchane('Borisov').
zavodchane('Ivanov').
zavodchane('Semenov').

job('Slesar').
job('Tokar').
job('Svarschik').

%3

%4

boy('Ivan').
boy('Petr').
boy('Michael').
boy('Sanya').
boy('Boris').

carColour('Red').
carColour('Black').
carColour('Blue').
carColour('Light blue').
carColour('White').

ownCar(B, C) :-
    boy(B),
    carColour(C),
    B = 'Ivan',
    C = 'Red'.

ownCar(B, C) :-
    boy(B),
    carColour(C),
    B = 'Petr',
    C \= 'Black',
    C \= 'Blue',
    C \= 'Light blue'.

ownCar(B, C) :-
    boy(B),
    carColour(C),
    B = 'Michael',
    (C = 'Black'; C = 'Blue').

ownCar(B, C) :-
    boy(B),
    carColour(C),
    B = 'Sanya',
    (C = 'Red'; C = 'Black'; C = 'Blue'; C = 'Light blue').

ownCar(B, C) :-
    boy(B),
    carColour(C),
    B = 'Boris',
    (C = 'White'; C = 'Blue').

carMeeting(B1, B2, B3, B4, B5, C1, C2, C3, C4, C5) :-
    boy(B1), carColour(C1), ownCar(B1, C1), 
    boy(B2), carColour(C2), ownCar(B2, C2),
    boy(B3), carColour(C3), ownCar(B3, C3),
    boy(B4), carColour(C4), ownCar(B4, C4),
    boy(B5), carColour(C5), ownCar(B5, C5), 
    C1 \= C2, C1 \= C3, C1 \= C4, C1 \= C5,
    C2 \= C3, C2 \= C4, C2 \= C5,
    C3 \= C4, C3 \= C5,
    C4 \= C5.

% carMeeting('Ivan', 'Petr', 'Michael', 'Sanya', 'Boris', C1, C2, C3, C4, C5).
    
    
