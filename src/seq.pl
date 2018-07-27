seq([H|T], X) :-
  append(H, X, Y),
  seq(T, Y).
seq([], _).
