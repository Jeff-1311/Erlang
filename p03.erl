-module(p03).
-export([get_nth_element/2]).

get_nth_element(1, [H|_]) -> H;
get_nth_element(N, [_|T]) -> get_nth_element(N-1,T).

