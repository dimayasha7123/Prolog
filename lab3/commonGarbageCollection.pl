% 01 - DONE
% 02 - BEGIN
% 03 - DONE
% 04 - DONE
% 05 - BEGIN
% 06 - BEGIN
% 07 - NOPE
% 08 - NOPE
% 09 - NOPE
% 10 - NOPE

% 2



sisterProp('Has').
sisterProp('Has no').

%older(X,Y, fact) :- surname(X), surname(Y), X \= Y.
%older(X,Y, rule) :- X \= Y, X \= Z, Z \= Y, older(X, Z, fact), older(Z,Y, _).

% worker(surname, job, hasSister)

solve2(Solve) :-
    Solve = [
        worker(X, XJob, XHasSister),
        worker(Y, YJob, YHasSister),
        worker(Z, ZJob, ZHasSister)],
    
    surname(X),
    surname(Y),
    surname(Z),
    %distinct([X, Y, Z]),
    
    job(XJob),
    job(YJob),
    job(ZJob),
    %distinct([XJob, YJob, ZJob]),

    sisterProp(XHasSister),
    sisterProp(YHasSister),
    sisterProp(ZHasSister),

    member(worker(SlesarSurname, 'Slesar', 'Has no'), Solve),
    %not(older(SlesarSurname, _, _)),

    member(worker('Borisov', _, 'Has'), Solve),
    
    member(worker('Semenov', _, _), Solve),
    member(worker(TokarSurname, 'Tokar', _), Solve),
    %older('Semenov', TokarSurname, _).


% 5

town('Moscow').
town('SPb').
town('Novgorod').
town('Perm').
town('Tomsk').

kid('Yura').
kid('Tolya').
kid('Alesha').
kid('Kolya').
kid('Vitya').

% kidFrom(K, T) :- kid(K), town(T).

% left(K1, K2) :- kid(K1), kid(K2).
% right(K1, K2) :- left(K2, K1).
% between(K, K1, K2) :- 
%     (left(K1, K), right(K2, K));
%     (right(K1, K), left(K2, K)).

% opposite(K, K1, K2) :-
%     (right(K, T), right(T, K1), right(K1, K2));
%     (right(K, T), right(T, K2), right(K2, K1)).

% between(K, 'Moscow', K1, 'Tomsk', 'Vitya', T2).
% between(K, 'SPb', 'Yura', T2, 'Tolya', T2).
% opposite()

% 6

% number('X').
% number('Y').
% number('Z').
% number('T').

less('X', 'Y').
less('X', 'T').
less('Z', 'T').

over('Y', 'Z').
over('Y', 'T').
over('Z', 'X').
