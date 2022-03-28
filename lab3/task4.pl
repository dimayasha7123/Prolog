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
    C4 \= C5, !.

% carMeeting('Ivan', 'Petr', 'Michael', 'Sanya', 'Boris', C1, C2, C3, C4, C5).