% Counting Procedure that takes the input of 2 numbers count(Number one,Number two) and displays all the numbers from that Number onr to Number two.
  % Certain Number to Number
count(X,X):-write(X),nl,write('Loop Ends Here!').
count(X,Y):-
    write(X),nl,
    Z is X+1,
    count(Z,Y).
