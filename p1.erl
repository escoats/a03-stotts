-module(p1).
-team("Elizabeth Coats, Manasi Chaudhary, Emma Coye").
-export([get_numData/0, compute/1, main/0]).

% Helper function to get number from I/O
get_numData() ->
    {ok, Num} = io:read("Enter a number: "),
    io:format("The number you entered is: ~w~n", [Num]),
    Num.

% Computation logic
compute(N) when not is_integer(N) ->
    io:fwrite("not an integer\n");
compute(N) when N < 0 ->
    io:fwrite("~p~n", [math:pow(abs(N), 7)]);
compute(N) when N == 0 ->
    io:fwrite("~p~n", [N]);
compute(N) when N > 0 ->
    if
        (N rem 7) == 0 ->
            io:fwrite("~p~n", [math:pow(N, 0.2)]); 
        true ->
            io:fwrite("~p~n", [factorial(N)])
    end.


% Runs the file
main() -> 
    Num = get_numData(),
    compute(Num).


% Local factorial function (moved from facto module)
factorial(0) -> 1;
factorial(N) when N > 0 ->
    N * factorial(N - 1).