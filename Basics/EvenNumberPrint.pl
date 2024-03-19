% Prints all Even Numbers given in range.
% Enter the input. in terminal while running.
input:-write('Enter the Starting Number:'),read(Number1),write('Enter the Ending Number:'),read(Number2),evenprinter(Number1,Number2).
evenprinter(0,0):-write('No Even Numbers Present in Between The Given Range').
evenprinter(X,Y):-
    X =\= 0,
    X<Y,
    X mod 2 =:= 0,
    write(X),nl,
    Z is X+1,
    evenprinter(Z,Y).
evenprinter(X,Y):-
    X<Y,
    X mod 2 =\= 0,
    Z is X+1,
    evenprinter(Z,Y).
evenprinter(0,Y):-
    Z is 1,
    evenprinter(Z,Y).
evenprinter(X,X):-X mod 2 =:= 0,write(X).
