module imp.

% Closed natural numbers
nat z.
nat (s N) :- nat N.

% Primitive addition operation
sum z N2 N2 :- nat N2.
sum (s N1) N2 (s N3) :- sum N1 N2 N3.

% Primitive subtraction operation
sub N1 z N1.
sub (s N1) (s N2) N3 :- sub N1 N2 N3.

% Primitive multiplication operation
% mul z N2 N2.
% mul (s N1) N2 N3 :- mul N1 N2 N3, plus N2 N3 N3.

% Values
val (anum N) :- nat N.

% Evaluation
aeval (anum N) (anum N) :- nat N.
aeval (aplus A1 A2) (anum N) :- aeval A1 (anum N1), aeval A2 (anum N2), sum N1 N2 N.