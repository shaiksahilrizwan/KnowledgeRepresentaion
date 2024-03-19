% Prints all the Prime Numbers Present in a Given Range using Recursive call.
% Enter input. in terminal while running.
input:-write('Enter the Starting Number:'),read(Number1),write('Enter the Ending Number:'),read(Number2),senderloop(Number1,Number2).
senderloop(X,Y):-
    X<Y,
    primechecker(X,2),
    Z is X+1,
    senderloop(Z,Y).
primechecker(X,Y):-
    X>Y,
    X mod Y =\= 0,
    Z is Y+1,
    primechecker(X,Z).
primechecker(X,X):-write( X ),nl.
primechecker(X,Y):-
    X>Y,
    X mod Y =:= 0.
primechecker(1,Y):-write('').
