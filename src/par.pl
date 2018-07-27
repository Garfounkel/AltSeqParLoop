remove_head(X, [X|Q], Q).
remove_head(X, [Y|Q], [Y|Q1]) :-
	remove_head(X, Q, Q1).

par([], []).
par(L, [X|Q1]) :-
	remove_head(X, L, Q),
	par(Q,Q1).
