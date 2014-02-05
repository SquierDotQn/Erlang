-module(session1).
-export([facto/1, fibo/1, fibo2/1, y/1, mysize/1, mysize2/1, print/1, print2/1]).

facto(0) 		-> 1;
facto(N) 		-> N * facto(N-1).

fibo(0) 		-> 0;
fibo(1) 		-> 1;
fibo(N) 		-> fibo(N-1) + fibo(N-2).

fibo2(N) when N>1 	-> fibo(N-1) + fibo(N-2);
fibo2(N) 		-> N.

y(N) 			-> 3*N+1.

%Mysize
mysize([])		-> 0;
mysize([_ | N])		-> 1 + mysize(N).


%Mysize2
mysize2([]) 		-> 0;
mysize2([Head|Tail]) when is_list(Head) 
			-> mysize2(Head) + mysize2(Tail);
mysize2([_|Tail]) 	-> 1 + mysize2(Tail).


%Print
print([]) 		-> ok;
print([Head|Tail]) 	-> io:fwrite(Head), io:fwrite(" "), print(Tail).



%Print2
print2([]) 		-> ok;
print2([Head|Tail]) when is_list(Head)
			-> print2(Head), print2(Tail);
print2([Head|Tail])	-> io:fwrite(Head), io:fwrite(" "), print2(Tail).
