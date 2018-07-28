# AltSeqParLoop

Project for LKR class at Epita

The goal of this project is to decompress strings compress withs differents
operator. There is 4 differents operators, ALT, SEQ, PAR, LOOP.

# PAR
The par operator, will combine the letters in the given order and in a reverse
way. (infinite arity)
function:  PAR(a, b) => ab; ba
prototype: par(L, RES) where L is the list of given letters and RES list of result

# SEQ
The seq operator, will concaten the given input in a single string (infinite arity)
function:  SEQ(a, b) => ab
prototype: seq(L, RES) where L is the list of given letters and RES list of result

# ALT
The alt operator will return one by one the given arguments (infinite arity)
function:  ALT(a, b) => a; b
prototype: alt(L, RES) where L is the list of given letters and RES list of result

# LOOP
The loop operator will repeat the letter or sequence of letter to the infinite
function:  LOOP(a) => a; aa; aaa; ...
prototype: loop(X, RES) where X is the given letter or sequence of letter
