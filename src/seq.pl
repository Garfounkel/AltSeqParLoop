seq([], []) :- !.
seq([H|T], X) :-
  !,
  seq(H, NewH),
  seq(T, NewT),
  append(NewH, NewT, X).
seq(H, [H]).
