-module(bs03).
-export([split/2]).


split(Bin,Delimiter) -> split(Bin,list_to_binary(Delimiter),<<>>,[]).

split(<<>>,_,Acc,List) ->  List++[<<Acc/binary>>];

split(Bin,Delimiter,Acc,List) -> DelSize = (byte_size(Delimiter)),
    case Bin of
	<<Delimiter:DelSize/binary, Rest/binary>> ->
	    split(Rest,Delimiter,<<>>,List++[<<Acc/binary>>]);

	<<X, Rest/binary>> ->
	    split(Rest,Delimiter,<<Acc/binary, X>>,List);	
		
%% Other
	_ ->
	    split(Bin,Delimiter,Acc,List)
	end.

