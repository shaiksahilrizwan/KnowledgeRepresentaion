% Finding Prime Number
% Entered Number is  Prime Number or Not
% Type input. in Terminal while Running
input:-write('Enter The Number :'),read(X),primefind(X,2).
primefind(X,Y):-
  Y<X,
  X mod Y =\= 0,
  Z is Y+1,
  primefind(X,Z).
primefind(X,Y):-
    Y<X,
    X mod Y =:=0,
    write('It is not a Prime Number').
primefind(X,X):-write('The Entered Number is Prime').