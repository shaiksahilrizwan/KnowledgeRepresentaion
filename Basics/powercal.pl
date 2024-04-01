% Power calculator
input:-write('Enter the Number:'),read(X),write('Enter the Power:'),read(Y),powercal(X,Y,1).
powercal(X,Y,P):-
    Y\==0,
    F is X*P,
    Z is Y-1,
    powercal(X,Z,F).
powercal(X,0,P):-write('The Power is :'),write(P).
