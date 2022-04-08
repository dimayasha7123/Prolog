% 1

% event(X, Y, Z), где 
%     X - название государства, где произошло событие,
%     Y - в каком веке произошло событие,
%     Z - само событие

event('Universum',  31, 'Appearance of the first states').
event('Egypt',      30, 'Formation of a single state').
event('India',      27, 'Appearance of the first ancient towns').
event('Egypt',      27, 'The pyramif of Cheops was built').
event('Greece',     18, 'Appearance of the first states').
event('Egypt',      18, 'The uprising of the poor and slaves').
event('China',      15, 'Appearance of the first states').
event('Egypt',      15, 'The reign og Tutmosis the Third').
event('Greece',     13, 'The Trojan War').
event('Greece',     11, 'Invasion of the Dorian tribes').
event('Roman',      8,  'Appearance of the first states').
event('Greece',     8,  'First olympic Games').
event('Roman',      6,  'Establishment of the republic').
event('Greece',     6,  'Solons reforms').
event('Babylonia',  6,  'State capture of Babylon by the Persians').
event('Egypt',      6,  'The conquest of egypt by the Persians').

% все события по стране
% event('Egypt', YEAR, EVENT).

% события с какого-то по какой-то век включительно
eventFromTo(FROM, TO, COUNTRY, EVENT) :- event(COUNTRY, YEAR, EVENT), YEAR =< FROM, YEAR >= TO.
% eventFromTo(18, 15, COUNTRY, EVENT).

% век становления государства
appearance(COUNTRY, YEAR) :- event(COUNTRY, YEAR, 'Appearance of the first states').
%appearance('China', YEAR).

% 2

river('Amur', 4416, 350, 1855, 'Yablonevyi hrebet', 'Tatarskii proliv').
river('Lena', 4400, 488, 2490, 'Baikalskii hrebet', 'More Laptevyh').
river('Ob', 4070, 400, 2990, 'Predgorya Altaya', 'Karskoe more').
river('Irtysh', 4248, 323, 1643, 'Kitai', 'Ob').
river('Enisei', 3487, 600, 2580, 'Vostochnyi Sayan', 'Karskoe more').
river('Volga', 3530, 255, 1360, 'Valdaiskaya vozvyshennost', 'Kaspiiskoe more').
river('Kolyma', 2129, 44, 643, 'Hrebet Cherskogo', 'Vostochno  sibirskoe more').
river('Ural', 2428, 54, 231, 'Uzhnyi Ural', 'Kaspiiskoe more').
river('Don', 2200, 45, 504, 'Sredne-russkaya vozvyshennost', 'Azovskoe more').
river('Kama', 1805, 130, 507, 'Verhne  Kamskaya vozvyshennost', 'Volga').
river('Pechora', 1809, 130, 322, 'Severnyi Ural', 'Barencevo more').
river('Angara', 1779, 62, 1039, 'Baikal', 'Enisei').
river('Selenga', 1024, 14, 447, 'Mongoliya', 'Baikal').
river('Kuban', 870, 11, 58, 'Kavkaz', 'Azovskoe more').
river('Neva', 74, 42, 281, 'Ladozhskoe ozero', 'Baltiiskoe more').

% river(X, _, _, _, _, 'Azovskoe more').
% river(X, _, _, _, 'Valdaiskaya vozvyshennost', _).
% river(X, _, _, _, _, 'Kaspiiskoe more').
% river(RIVER, LEN, _, _, _, _), river('Kama', KAMALEN, _, _, _, _), LEN < KAMALEN.
% river(RIVER, LEN, _, _, _, _), river('Irtysh', IRTYSHLEN, _, _, _, _), LEN > IRTYSHLEN.
% river('Kama', LEN, STOK, SQUARE, ISTOK, VPADAET).

% 3

man('John').
man('Bob').
man('Hank').
man('Harry').

woman('Marry').
woman('Ann').

describes('Marry', 'Nice').
describes('John', 'Kind').
describes('John', 'Manly').
describes('John', 'Strong').

describes('Hank', 'Manly').
describes('Bob', 'Rich').
describes('Harry', 'Kind').

womanLike(X, Y) :-  woman(X), 
                    man(Y), 
                    describes(Y, 'Kind'), 
                    ((manLike(Y, X)); describes(Y, 'Strong')).

manLike(X, Y) :- man(X), woman(Y), describes(Y, 'Nice').

happy(X) :- describes(X, 'Rich'); womanLike(_, X).

% happy('John').
% womanLike(X, Y).

% 4

creature('Muska').
creature('Strelka').
creature('Murka').
creature('Reks').
creature('Drujok').
creature('Muxtar').

human('Anatolii').
human('Nikolai').
human('Ivan').

type('Muska', 'cat').
type('Strelka', 'cat').
type('Murka', 'cat').
type('Reks', 'dog').
type('Drujok', 'dog').
type('Muxtar', 'dog').

colour('Muska', 'brown').
colour('Strelka', 'black').
colour('Murka', 'red').
colour('Reks', 'spotted').
colour('Drujok', 'red').
colour('Muxtar', 'white').

own(H, C) :- 
    human(H),
    H = 'Anatolii',
    creature(C),
    colour(C, CLR),
    (CLR = 'black'; CLR = 'brown').

own(H, C) :-
    human(H),
    H = 'Nikolai',
    creature(C),
    type(C, 'dog'),
    colour(C, CLR),
    CLR \= 'white',
    not(own('Anatolii', C)). 

pedigree(C) :- 
    creature(C),
    own(H, C),
    (H = 'Anatolii'; H = 'Nikolai').

own(H, C) :-
    human(H),
    H = 'Ivan',
    creature(C),
    C = 'Murka',
    not(own('Nikolai', 'Muska')),
    not(pedigree('Muxtar')).

% не работает, блин

noOwner(C) :- 
    creature(C),
    not(own(H, C)).

% имеет ли смысл creature(C) и human(H) ???

% 5

student('Antonov', 5, 5, 5).
student('Bobrov', 5, 3, 2).
student('Vyatkin', 5, 5, 5).
student('Dedov', 4, 4, 4).
student('Emelyanova', 5, 5, 5).
student('Krotov', 2, 3, 3).
student('Marin', 5, 4, 5).
student('Novikov', 2, 3, 2).
student('Podlesnyi', 2, 3, 3).
student('Polezhaev', 5, 5, 5).
student('Sosnin', 4, 4, 4).

good(X) :- student(X, M1, M2, M3), M1 =:= 5, M2 =:= 5, M3 =:= 5.
bad(X) :- student(X, M1, M2, M3), (M1 =:= 2; M2 =:= 2; M3 =:= 2).
math(X) :- student(X, M1, M2, _), M1 > 3, M2 > 3.

% good('Novikov').
% good(X).
% bad(X).
% math('Sosnin').
% student(X, M, _, _), M =:= 2.