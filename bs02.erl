-module(bs02).
-export([words/1]).

words(B) -> words(B, <<>>, []).
words(<<>>, Acc, G) -> [Acc|G];
words(<<$\s, T/binary>>, Acc, G) -> words(T, <<>>, [Acc|G]);
words(<<H, T/binary>>, Acc, G) ->  words(T, <<Acc/binary, H>>, G).


