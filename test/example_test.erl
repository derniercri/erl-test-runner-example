-module(example_test).
-include_lib("eunit/include/eunit.hrl").

hello_test() ->
    ?assertEqual(example:say_hello(), "Hello !").
