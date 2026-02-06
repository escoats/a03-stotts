-module(p1).
-team("Elizabeth Coats, Manasi Chaudhary, Emma Coye").
-export([p1/1]).

% TODO: take N as input from user
p1(N) when not is_integer(N) ->
    io:fwrite("not an integer\n");
p1(N) when N < 0 ->
    io:fwrite("~p~n", [math:pow(abs(N), 7)]);
p1(N) when N == 0 ->
    io:fwrite("~p~n", [N]);
p1(N) when N > 0 ->
    if
        (N rem 7) == 0 ->
            io:fwrite("~p~n", [math:pow(N, 0.2)]);
        true ->
            io:fwrite("todo: implement...\n")
    end.