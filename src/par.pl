enlever(X,[X|Q],Q).
enlever(X,[Y|Q],[Y|Q1]):-enlever(X,Q,Q1).

permut([],[]).
permut(L,[X|Q1]) :-
	enlever(X,L,Q),permut(Q,Q1).
