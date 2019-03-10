-module(p13).
-export([decode/1]).

decode([])-> [];

decode([{2,X}|[]])-> [X,X];

decode([{1,X}|[]])-> [X];
                                          
decode([{Count,X}|[]])-> [X|decode([{Count-1,X}])];

decode([{2,X}|T])->
    [X|[X|decode(T)]];

decode([{1,X}|T])->
    [X|decode(T)];

decode([{Count,X}|T])->
    [X|decode([{Count-1,X}|T])];

decode([H|[{Count,X}|T]])-> [H|decode([{Count,X}|T])];

decode([H|[]])-> [H].

