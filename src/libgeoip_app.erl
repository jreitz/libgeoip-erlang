-module(libgeoip_app).
-behaviour(application).

-export([start/0, stop/0]).
-export([start/2, stop/1]).

start() ->
  application:start(libgeoip).

stop() ->
  application:stop(libgeoip).


start(_Type, _Args) ->
  libgeoip_sup:start_link().

stop(_State) ->
  ok.
