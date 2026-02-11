-module(p2).
-team("Elizabeth Coats, Manasi Chaudhary, Emma Coye").
-export([loop/0]).

loop() ->
    N = p1:get_numData(),
    if N /= 0 ->
        p1:compute(N),
        loop();
    true ->
        p1:compute(N),
        ok
    end.
