-module(p07).
-export([flatten2/1]).

%flatten(List) -> flatten(List,[]).

%flatten([H|T], Acc) -> flatten(H, Acc);
%flatten([H|[]], Acc) -> H;
%flatten(H, Acc) -> [H|Acc].

flatten2(L) -> flatten2(L, []).

flatten2([H|T], Todo) -> flatten2(H, [T|Todo]);
flatten2([], [H|Todo]) -> flatten2(H, Todo);
flatten2([], []) -> [];
flatten2(E, Todo) -> [E|flatten2(Todo, [])].






