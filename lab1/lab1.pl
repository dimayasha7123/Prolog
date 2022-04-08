% 1

%кто подарил, кому подарил, что подарил
dar('Nik', 'Tom', 'Book').
dar('Marry', 'Tom', 'Pencil').
dar('Rick', 'Marry', 'Toy').
dar('Bob', 'Pet', 'Toy').

% dar('Rick', 'Marry', 'Toy').
% dar('Nick', 'Tom', 'Toy').
% dar('Marry', 'Tom', X).
% dar(_, 'Tom', X).
% dar(X, 'Pet', 'Toy').

%2

%кто родитель, кого родил 
parent('Maria', 'Fedor').
parent('Ivan', 'Stepan').
parent('Ivan', 'Fedor').
parent('Fedor', 'Olga').
parent('Fedor', 'Tatyana').

% parent('Fedor', 'Olga').
% parent(X, 'Tatyana').
% parent('Ivan', X).
% parent(Y, 'Olga'), parent(X, Y).
% parent('Ivan', Y), parent(Y, X).
% parent(X, 'Fedor'), parent(X, 'Stepan').
% parent(X, Y).

%3

%продукты: бананы, шоколад, яблоки
%фрукты: бананы, яблоки
%конфеты: шоколад

%имена: Вова, Света, Том

fruit('Banans').
fruit('Apples').
candy('Chocolate').

like('Vova', 'Banans').
like('Sveta', 'Apples').
like('Sveta', 'Chocolate').
like('Tom', 'Banans').
like('Tom', 'Apples').
like('Tom', 'Chocolate').

like_fruit(X) :- fruit(Y), like(X, Y).

% like(X, 'Banans').
% like(X, 'Chocolate'), like(X, 'Apples').
% like('Vova', X).
% like('Sveta', X), like('Vova', X).
%like_fruit(X).

%4

%имена: Андрей, Саша, Ольга, Иван
%спорт: волейбол, футбол

man('Andrey').
woman('Sasha').
woman('Olga').
man('Ivan').

play('Andrey', 'Football').
play('Sasha', 'Volleyball').
play('Olga', 'Volleyball').
play('Ivan', 'Football').
play('Ivan', 'Volleyball').
volley_woman(X) :- woman(X), play(X, 'Volleyball').

% play('Andrey', X).
% play(X, 'Volleyball').
% play('Sasha', X), play('Olga', X).
% play(X, 'Football'), play(X, 'Volleyball').
% volley_woman(X).



