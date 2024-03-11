#Family tree Knowledge Base Representation 
#Facts
male(alex).
male(owen).
male(eric).
male(kevin).
male(james).
male(ryan).
male(aiden).
male(noah).
female(maria).
female(lily).
female(sophia).
female(emma).
female(olivia).
female(chloe).
female(isabella).
female(ava).
parent(alex, lily).
parent(alex, owen).
parent(alex, eric).
parent(alex, sophia).
parent(james, ryan).
parent(james, emma).
parent(owen, aiden).
parent(owen, noah).
parent(eric, chloe).
parent(eric, isabella).
parent(kevin, ava).
parent(maria, lily).
parent(maria, owen).
parent(maria, eric).
parent(maria, sophia).
# Rules
father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).
wife(X,Y):-parent(X,Z),parent(Y,Z),X\==Y,female(X),male(Y).
husband(X,Y):-parent(X,Z),parent(Y,Z),X\==Y,male(X),female(Y).
grandmother(X,Y):-mother(X,Z),parent(Z,Y).
grandfather(X,Y):-father(X,Z),parent(Z,Y).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
cousin(X,Y):-(brother(Z,K),parent(K,Y),parent(Z,X));(sister(Z,K),parent(K,Y),parent(Z,X)).
uncle(X,Y):-(brother(X,Z),parent(Z,Y));(husband(X,S),sister(S,Z),parent(Z,Y)).
aunt(X,Y):-(sister(X,Z),parent(Z,Y));(uncle(S,Y),wife(X,S)).
predecessor(X,Z):-parent(X,Z).
predecessor(X,Z):-parent(X,Y),predecessor(Y,Z).