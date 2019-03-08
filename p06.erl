-module(p06).
-export([is_palindrome/1]).

is_palindrome(List) -> reverse(List) == List.


reverse(L) -> reverse(L,[]).

reverse([H|T],Acc) -> reverse(T,[H|Acc]);

reverse([],Acc) -> Acc.


