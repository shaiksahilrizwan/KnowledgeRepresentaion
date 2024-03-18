% Enter input. hit enter for running
% Finding the Power of two Numbers
input:-write('Enter The Number :'),read(X),nl,write('Enter the Power :'),read(Y),power_find(X,Y,1).
power_find(X,0,Z):-write('Power is :'),write(Z).
power_find(X,Y,Z):-
  K is Z*X,
  Y1 is Y-1,
  power_find(X,Y1,K).
