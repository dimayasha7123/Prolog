sort_by_choice([],[]):-!.
sort_by_choice([E], [E]):- not(compound(E)), !.
sort_by_choice(L, [Min|SL]):-
    min_list_index(L, Min, MinIndex),
    delete_by_index(MinIndex, L, DL),
    sort_by_choice(DL, SL), !.

delete_by_index(I, _, _):-
    I < 0, !, write("Index out of range!"), nl, fail.
delete_by_index(0, [H|T], T):- !.
delete_by_index(I, [H|T], [H|DL]):-
    I1 is I - 1,
    delete_by_index(I1, T, DL), !.

min_list_index(L, E, I):- min_list_index(L, E, I, 0).
min_list_index([E], E, C, C):-!.
min_list_index([H|T], E, I, C):-
   min_list_index(T, TE, TI, C + 1),
   TE < H, !, E is TE, I is TI;
   E is H, I is C.