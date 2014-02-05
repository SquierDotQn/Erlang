-module(session2).
-export([head/1, second/1, same/2]).

head([])		-> [];
head([Head|_])		-> Head.

second([])		-> [];
second([_|Tail])	-> head(Tail).

same(First, Second)	-> First==Second.

