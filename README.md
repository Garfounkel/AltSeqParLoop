# AltSeqParLoop

Project for LKR class at Epita

The goal of this project is to decompress strings compress withs differents
operator. There is 4 differents operators, ALT, SEQ, PAR, LOOP.

## PAR
The par operator, will combine the letters for every permutation. (infinite arity)

function:  PAR(a, b) => ab; ba

prototype: par(L, RES) where L is the list of given letters and RES list of result


## SEQ
The seq operator, will concat the given input in a single string (infinite arity)

function:  SEQ(a, b) => ab

prototype: seq(L, RES) where L is the list of given letters and RES list of result


## ALT
The alt operator will return one by one the given arguments (infinite arity)

function:  ALT(a, b) => a; b

prototype: alt(L, RES) where L is the list of given letters and RES list of result


## LOOP
The loop operator will repeat the letter or sequence of letter to the infinite

function:  LOOP(a) => a; aa; aaa; ...

prototype: loop(X, RES) where X is the given letter or sequence of letter


## Test-suite
To launch the test suite:
``` prolog
$ swipl tests/test-suite.pl
?- run_tests.
```
Which should output:
``` prolog
% PL-Unit: alt
.alt(a, b) -> a; b
.alt(a, b, c, d) -> a; b; c; d
done
% PL-Unit: seq
.seq(a, b) -> ab
.seq(a, b, c, d) -> abcd
done
% PL-Unit: par
.par(a, b) -> ab; ba
.par(a, b, c) -> abc; acb; bac; bca; cab; cba
done
% PL-Unit: loop
.loop(a) -> a; aa; aaa; ...
.loop(a, b, c, d) -> abcd; abcdabcd; abcdabcdabcd; ...
done
% PL-Unit: altSeqParLoop
.seq(alt(a, b), c, d) -> abd; bcd
.par(seq(seq(a), alt(b, c))) -> ab; ba; ac; ca
done
% All 10 tests passed
```
