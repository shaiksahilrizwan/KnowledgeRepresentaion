% Enter input. in terminal while running
input:-write('Enter the Number:'),read(X),fact(X,1).
fact(0,Y):-write('The Factorial is:'),write(Y).
fact(X,Y):-
  F is X*Y,
  F2 is X-1,
  fact(F2,F).
  
