:- include('../src/alt.pl').
:- include('../src/par.pl').
:- include('../src/loop.pl').
:- include('../src/seq.pl').


:- begin_tests(alt).
test(alt, [nondet]) :-
  write('\nalt(a, b) -> a; b'),
  alt([a, b], [a]),
  alt([a, b], [b]).
test(alt, [nondet]) :-
  write('\nalt(a, b, c, d) -> a; b; c; d'),
  alt([a, b, c, d], [a]),
  alt([a, b, c, d], [b]),
  alt([a, b, c, d], [c]),
  alt([a, b, c, d], [d]).
:- end_tests(alt).


:- begin_tests(seq).
test(seq, [nondet]) :-
  write('\nseq(a, b) -> ab'),
  seq([a, b], [a, b]).
test(seq, [nondet]) :-
  write('\nseq(a, b, c, d) -> abcd'),
  seq([a, b, c, d], [a, b, c, d]).
:- end_tests(seq).


:- begin_tests(par).
test(par, [nondet]) :-
  write('\npar(a, b) -> ab; ba'),
  par([a, b], [a, b]),
  par([a, b], [b, a]).
test(par, [nondet]) :-
  write('\npar(a, b, c) -> abc; acb; bac; bca; cab; cba'),
  par([a, b, c], [a, b, c]),
  par([a, b, c], [a, c, b]),
  par([a, b, c], [b, a, c]),
  par([a, b, c], [b, c, a]),
  par([a, b, c], [c, a, b]),
  par([a, b, c], [c, b, a]).
:- end_tests(par).


:- begin_tests(loop).
test(loop, [nondet]) :-
  write('\nloop(a) -> a; aa; aaa; ...'),
  loop([a], [a]),
  loop([a], [a, a]),
  loop([a], [a, a, a]).
test(loop, [nondet]) :-
  write('\nloop(a, b, c, d) -> abcd; abcdabcd; abcdabcdabcd; ...'),
  loop([a, b, c, d], [a, b, c, d]),
  loop([a, b, c, d], [a, b, c, d, a, b, c, d]),
  loop([a, b, c, d], [a, b, c, d, a, b, c, d, a, b, c, d]).
:- end_tests(loop).


:- begin_tests(altSeqParLoop).
test(seqAlt, [nondet]) :-
  write('\nseq(alt(a, b), c, d) -> abd; bcd'),
  alt([a, b], [a]), seq([[a], c, d], [a, c, d]),
  alt([a, b], [b]), seq([[b], c, d], [b, c, d]).
test(parSeqAlt, [nondet]) :-
  write('\npar(seq(seq(a), alt(b, c))) -> ab; ba; ac; ca'),
  alt([b, c], [b]), seq([a], [a]), seq([[a], [b]], [a, b]), par([a, b], [a, b]),
  alt([b, c], [b]), seq([a], [a]), seq([[a], [b]], [a, b]), par([a, b], [b, a]),
  alt([b, c], [c]), seq([a], [a]), seq([[a], [c]], [a, c]), par([a, c], [a, c]),
  alt([b, c], [c]), seq([a], [a]), seq([[a], [c]], [a, c]), par([a, c], [c, a]).
:- end_tests(altSeqParLoop).
