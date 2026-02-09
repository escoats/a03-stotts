-module(facto).
-export([factorial/1, fact/1]).
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

fact(N) when N>0 -> N * fact(N-1);
fact(0) -> 1.

