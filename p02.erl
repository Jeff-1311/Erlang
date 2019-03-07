
-module(p02).
-export([last/1]).


    last([])->nil ;
	last([H1,H2|[]])-> [H1,H2];
	last([_|T])-> last(T) .