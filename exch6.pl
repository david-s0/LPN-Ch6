%6.1
doubled(L) :-
	append(X, X, L).

%6.2
reverse([], []).
reverse([H|L], R) :-
	reverse(L, R2),
	append(R2, [H], R).
palindrome(L) :-
	reverse(L, R),
	L == R.

%6.3

%1
second(X, [H1, X|_]).

%2
swap12([H1, H2|L], [H2, H1|L]).

%3
final(X, [X|[]]).
final(X, [H|L]) :-
	final(X, L).

%4
toptail([_|InList], OutList) :-
	append(OutList, [_], InList).

%5
swapfl([H|List1], [X|List2]) :-
	final(X, List1),
	toptail([H|List1], OutList),
	append(OutList, [H], List2).

%6.4
family(english, red, P, leftof(family(X)), rightof(family(Y))).
family(spanish, H, jaguar, leftof(family(X)), rightof(family(Y))).
family(japanese, H, P, leftof(family(Z)), rightof(family(A, B, snail, leftof(family(X)), rightof(family(Y))))).
family(N, H, snail, leftof(family(N, blue, P, leftof(family(Q)), rightof(family(S)))), rightof(family(Y))).

zebra(N) :-
	family(N, A, zebra, B, C).

%Practical 1
mymember(A, L) :-
	append(_, [A|_], L).

%Practical 2
set([],  Temp,  Temp).
set([H|Tail], Temp, OutList) :-
	member(H, Temp),
	set(Tail, Temp, OutList).
set([H|Tail], Temp, OutList) :-
	\+member(H, Temp),
	set(Tail, [H|Temp], OutList).
set([H|Tail], OutList) :-
	set(Tail, [H], OutList).

%Practical 3
flatten([], []).
flatten([H|List], Flat) :-
	flatten(List, Flat2),
	append(H, Flat2, Flat).