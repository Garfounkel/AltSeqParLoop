alt([X | _], [X]).
alt([_ | L], Y) :-
  alt(L, Y).
