%-module(p01).
%-export([last/1]).
%
%last(X)-> first(lists:reverse(X)).
%
%first([H|T])-> H.

-module(p01).
-export([lastq/1]).


%last([])->nil ;
	lastq([H1,H2|[]])-> [H1,H2];
	lastq([_|T])-> lastq(T) .