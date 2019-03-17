-module(s01).
-export([first_word/1]).

first_word(L) -> first_word(L, []).

first_word(" ", Acc) -> Acc;
first_word([H|T], Acc) -> first_word(T, [H|Acc]).


