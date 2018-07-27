loop(L, R) :-
  loop_hat(L, L2),
  flatten(L2, R).

loop_hat(X, [X]).
loop_hat(X, [X | L]) :-
  loop_hat(X, L).
