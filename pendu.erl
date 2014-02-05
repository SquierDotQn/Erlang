-module(pendu).
-export([readWord/1, print/1, readChar/0, game/2]).

game(Tries, _) when is_integer(Tries) /= true -> io:fwrite("Erreur d'initialisation : Le nombre d'essais doit etre un entier.");
game(Tries, _) when Tries < 1 -> io:fwrite("Erreur d'initialisation : Le nombre d'essais doit etre positif.");
game(_, Word) when length(Word) < 2 -> io:fwrite("Erreur d'initialisation : Le mot doit etre plus long qu'un caractere'.");
game(Tries, Word) -> readChar().


readWord(Prompt) -> {ok, [Msg|_]} = io:fread(Prompt, "~s"), Msg.
print(Word) -> io:format("~p", [Word]).
readChar() -> [First|_] = readWord("Veuillez entrer une lettre: "), First.
