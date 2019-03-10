-module(p09).
-export([pack/1]).

pack(L) -> pack(L,[],[]).
pack([],[],[]) -> []; 
pack([H|T],[],LiL) -> pack(T,[H],LiL);
pack([H|T],[H|Rest],LiL) -> pack(T,[H,H|Rest],LiL);
pack([H|T], L, LiL) -> pack(T,[H],[L|LiL]);
pack([],L,LiL) -> reverse([L|LiL]).


reverse(L) -> reverse(L,[]).
reverse([H|T],Acc) -> reverse(T,[H|Acc]);
reverse([],Acc) -> Acc.














