-module(p04).
-export([count/1]).

%count([]) -> 0;
count(M) -> count2(0, M).
count2(N, [H|T]) -> count2(N+1, T);
count2(N,[]) -> N.


