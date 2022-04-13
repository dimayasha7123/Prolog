% task1 - длина списка

deep_len([], 0).
deep_len(A, 1) :- not(compound(A)).
deep_len([X|T], L):-
    deep_len(T, L1),    
    deep_len(X, L2),
    L is L1 + L2, !.

classic_len([], 0).
classic_len([_|T], L):-
    classic_len(T, L1),
    L is L1 + 1, !.

% task2 - принадлежность списку
deep_member(X, [X| _]).
deep_member(X, [H|T]) :- (deep_member(X, T); (compound(H), deep_member(X, H))), !.

classic_member(X, [X| _]).
classic_member(X, [H|T]) :- classic_member(X, T), !.

% task3 - конкатенация списка
classic_append([], L, L).
classic_append([X|L1], L2, [X|L3]) :- classic_append(L1, L2, L3).

% task4 - реверс списка

deep_reverse(A, A):- not(compound(A)).
deep_reverse([], []).
deep_reverse([X|L1], L2):- deep_reverse(L1, L3), deep_reverse(X, X1), classic_append(L3, [X1], L2).

classic_reverse([], []).
classic_reverse([X|L1], L2):- classic_reverse(L1, L3), classic_append(L3, [X], L2).

% task5 - проверка на палиндром

check_palindrom(A):- classic_reverse(A, R), A == R.

% task6 - получение элемента по индексу

get_by_index(I, _, _):-
    I < 0, !, write("Index out of range!"), nl, fail.
get_by_index(0, [H|_], H):-!.
get_by_index(I, [_|T], X):-
   I1 is I - 1,
   get_by_index(I1, T, X).

% task7 - удалить все вхождения элементов

classic_delete(_, [], []).
classic_delete(X, [X|L], L1):- classic_delete(X, L, L1).
classic_delete(X, [Y|L], [Y|L1]):- classic_delete(X, L, L1).

deep_delete(_, [], []).
deep_delete(X, [X|L], L1):- deep_delete(X, L, L1).
deep_delete(X, [Y|L], [Y|L1]):- not(compound(Y)), deep_delete(X, L, L1).
deep_delete(X, [Y|L], [L2|L1]):- compound(Y), deep_delete(X, Y, L2), deep_delete(X, L, L1).