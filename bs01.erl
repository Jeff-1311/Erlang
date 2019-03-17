-module(bs01).
-export([first_word/1]).

first_word(B) -> first_word(B, <<>>).
first_word(<<$\s, T/binary>>, Acc) -> T;
first_word(<<H, T/binary>>, Acc) ->  first_word(T, <<Acc/binary, H>>).


