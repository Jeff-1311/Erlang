-module(p01).
-export([last/1]).

    last([])->nil ;
	last([H|[]])-> H;
	last([_|T])-> last(T) .