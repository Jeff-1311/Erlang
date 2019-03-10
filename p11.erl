-module(p11).
-export([encode_modified/1]).

len([_H|T]) -> 1+len(T);
len([]) ->
    0.

reverse(L) ->  reverse(L,[]).
reverse([],Tail) -> Tail;
reverse([H|T], Tail) -> reverse(T,[H|Tail]).

encode_modified(L) ->  encode_modified(L,[],[],0).
encode_modified([],[],[],_) -> [];

encode_modified([H|T], [], TiL,0) -> encode_modified(T,[H],TiL,0);

encode_modified([H|T], [H|Rest], TiL,_) -> encode_modified(T, [H,H|Rest], TiL,len([H,H|Rest]));

encode_modified([H|T], [Hd|_],TiL,1) -> encode_modified(T,[H],[Hd|TiL],1);

encode_modified([H|T], [Hd|Rest],TiL,_) -> encode_modified(T,[H],[{len([Hd|Rest]),Hd}|TiL],1);

encode_modified([],[H|_T],TiL,1) -> reverse([H|TiL]);

encode_modified([],[H|T],TiL,_) -> reverse([{len([H|T]),H}|TiL]).

