-module(erlmath).
-export([qnorm_nif/1]).
-on_load(init/0).

init() ->
    ok = erlang:load_nif( (code:priv_dir(erlmath)++"/qnorm") , 0 ).

qnorm_nif(_Y) ->
    exit(nif_library_not_loaded).
