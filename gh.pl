parent(A,B) :- mother(A,B); father(A,B).
grandparent(C,E) :- parent(C,D),parent(D,E).
grandmother(C,E) :- mother(C,D),parent(D,E).
grandfather(C,E) :- father(C,D),parent(D,E).
siblings(B,G) :- parent(P,B), parent(P,G), B\=G.
cousins(X,Y) :- parent(A,X), parent(B,Y), siblings(A,B), X\=Y.

mother(mary,sue).
mother(mary,bill).
mother(sue,nancy).
mother(sue,jeff).
mother(jane,ron).
mother(nancy,alice2).
mother(gail,jane).
mother(gail,elaine).
mother(laura,alice).
mother(elaine,david).
mother(sarah,frank).
mother(elaine,thomas).

father(john,sue).
father(john,bill).
father(bob,nancy).
father(bob,jeff).
father(bill,ron).
father(charlie,alice2).
father(david,charlie).
father(carl,jane).
father(peter,laura).
father(frank,thomas).
father(frank,david).
father(thomas,alice).
father(henry,frank).

(ancestor(A,D):-parent(A,D)).
(ancestor(A,D):-(parent(P,D),ancestor(A,P))).