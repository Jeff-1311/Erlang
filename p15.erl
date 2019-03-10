-module(p15).
-export([replicate/2]).

reverse(L) -> reverse(L,[]).
reverse([],Tail) -> Tail;
reverse([H|T], Tail) -> reverse(T,[H|Tail]).

replicate(L,Num) -> replicate(L,Num,Num,[]).

replicate([_H|T],Num,0,DupList) -> replicate(T,Num,Num,DupList);


replicate([H|T],Num,Inc,DupList) -> [H|replicate([H|T],Num,Inc-1,DupList)];

replicate([],_,_,L) -> reverse(L).
