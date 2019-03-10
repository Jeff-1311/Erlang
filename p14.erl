-module(p14).
-export([duplicate/1]).

reverse(L) -> reverse(L,[]).
reverse([],Tail) -> Tail;
reverse([H|T], Tail) -> reverse(T,[H|Tail]).
                  
duplicate(L) -> duplicate(L,[]).

duplicate([H|T],DupList) -> duplicate(T,[H,H|DupList]);

duplicate([],L) -> reverse(L).

