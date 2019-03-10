-module(p12).
-export([decode_modified/1]).

reverse(L) ->
    reverse(L,[]).
reverse([],Tail) ->
    Tail;
reverse([H|T], Tail) ->
    reverse(T,[H|Tail]).

flatten(List) ->
    flatten(List, []). 
flatten([[]|T],FlattenList) ->
    flatten(T,FlattenList);
flatten([[_|_]=H|T],FlattenList) ->
    flatten(T,flatten(H,FlattenList));
flatten([H|T],FlattenList) ->
    flatten(T,FlattenList++[H]);
flatten([],FlattenList) ->
    FlattenList.

replicate(Element,Num) ->
    replicate(Element,Num,[]).
replicate(_,0,L) ->
    L;
replicate(Element,Num,DupList) ->
   [Element|replicate(Element,Num-1,DupList)].

decode_modified(L) ->
    decode_modified(L,{},[]).
decode_modified([],_,[]) -> [];

decode_modified([H|T],{},List) ->
    decode_modified(T,H,List);

decode_modified([H|T],{Num,Char},List) ->
    decode_modified(T,H,[replicate(Char,Num)|List]);

decode_modified([H|T],_Element = Char,List) ->
    decode_modified(T,H,[Char|List]);


decode_modified([],{Num,Char},List) ->
    flatten(reverse([replicate(Char,Num)|List]));
decode_modified([],Char,List) ->
    flatten(reverse([Char|List])).
