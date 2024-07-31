% Facts about the family
person(john).
person(jane).
person(bob).
person(alice).
person(tom).
person(susan).
person(mike).
person(sara).
person(david).
person(emma).

father(john, bob).
father(john, alice).
father(bob, tom).
father(bob, susan).
father(mike, david).
father(mike, emma).

mother(jane, bob).
mother(jane, alice).
mother(alice, tom).
mother(alice, susan).
mother(sara, david).
mother(sara, emma).

siblings(bob, alice).
siblings(tom, susan).
siblings(david, emma).

% Predicates to query the family tree
mother(X, Y) :-
    person(X),
    person(Y),
    mother(X, Y).

father(X, Y) :-
    person(X),
    person(Y),
    father(X, Y).

siblings(X, Y) :-
    person(X),
    person(Y),
    siblings(X, Y).