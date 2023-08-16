-module(repro).
-export([b/1]).

b(Bin) ->
    c(byte_size(Bin)).

c(N) ->
    <<(N rem 128), (N div 128)>>.
