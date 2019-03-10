-module(p08).
-export([compress/1]).


compress(L) -> compress3(L, []).

compress3([H|T], [H|E]) -> compress3(T,[H|E]);
compress3([H|T], F) -> compress3(T,[H|F]);
compress3([], Acc) -> reverse(Acc).

reverse(L) -> reverse(L,[]).
reverse([H|T],Acc) -> reverse(T,[H|Acc]);
reverse([],Acc) -> Acc.














