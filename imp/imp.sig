sig imp.

% Natural numbers
kind nat    type.
type z      nat.
type s      nat -> nat.
type nat    nat -> o.

% Abstract syntax of arithmetic expressions
kind aexp   type.
type anum   nat -> aexp.
type aplus  aexp -> aexp -> aexp.
type aminus aexp -> aexp -> aexp.
type amult  aexp -> aexp -> aexp.

% Abstract syntax of boolean expressions
kind bexp   type.
type btrue  bexp.
type bfalse bexp.
type beq    aexp -> aexp -> bexp.
type ble    aexp -> aexp -> bexp.
type bnot   bexp -> bexp.
type band   bexp -> bexp -> bexp.

% Arithmetic operations
type sum    nat -> nat -> nat -> o.
type sub    nat -> nat -> nat -> o.

% Evaluation
type aeval  aexp -> aexp -> o.
type beval  bexp -> o -> o.
type val    aexp -> o.