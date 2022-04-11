% task1 - длина списка
deep_len([], 0).
deep_len([_|T], L):-
    deep_len(T, L1),
    L is L1 + 1, !.

% task2 - принадлежность списку
deep_member(X, [X| _]).
deep_member(X, [H|T]) :- deep_member(X, T), !.

% task3 - конкатенация списка
my_append([], L, L).
my_append([X, L1], L2, [X, L3]) :- my_append(L1, L2, L3).

% task4 - реверс списка



% task5 - проверка на палиндром



% task6 - получение элемента по индексу



% task7 - удалить все вхождения элементов
