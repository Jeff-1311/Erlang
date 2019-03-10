-module(p10).
-export([encode/1]).

len([_H|T]) -> 1+len(T);
len([]) -> 0.

encode(L) -> encode(L,[],[]).

encode([],[],[]) -> [];

encode([H|T], [], TiL) -> encode(T,[H],TiL);

encode([H|T], [H|Rest], TiL) -> encode(T, [H,H|Rest], TiL);

encode([H|T], [Hd|Rest],TiL) ->  encode(T,[H],[{len([Hd|Rest]),Hd}|TiL]);

encode([],[H|T],TiL) -> reverse([{len([H|T]),H}|TiL]).
	
reverse(L) -> reverse(L,[]).
reverse([H|T],Acc) -> reverse(T,[H|Acc]);
reverse([],Acc) -> Acc.
