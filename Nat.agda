open import Agda.Builtin.Bool

data Nat : Set where
  zero : Nat
  suc : Nat → Nat
{-# BUILTIN NATURAL Nat #-}

_+_ : Nat → Nat → Nat
zero + y = y
(suc x) + y = suc (x + y)

_-_ : Nat → Nat → Nat
zero    - y     = zero
x       - zero  = x
(suc x) - (suc y) = x - y

-- left is the entirety of left-side argument to _-_
-- (suc (suc zero)) - (suc (suc zero))
-- (suc zero) - (suc zero)
-- zero - zero
-- zero

not : Bool → Bool
not false = true
not true = false

infixr 5 _::_

data List (A : Set) : Set where
  [] : List A
  _::_ : A → List A → List A

-- exercise 1.4 page 8

length : {A : Set} → List A → Nat
length [] = zero
length (x :: y) = suc (length y)

infixr 5 _++_
_++_ : {A : Set} → List A → List A → List A
[]        ++ ys = ys
(x :: xs) ++ ys = x :: (xs ++ ys)

map : {A B : Set} → (A → B) → List A → List B
map f [] = []
map f (x :: xs) = f x :: map f xs

infixr 4 _,_

data _×_ (A B : Set) : Set where
  _,_ : A → B → A × B

fst : {A B : Set} → A × B → A
fst (x , y) = x

snd : {A B : Set} → A × B → B
snd (x , y) = y

-- Page 11
-- Exercise 2.1. Implement the function
-- downFrom : (n : Nat) → Vec Nat n that,
-- given a number n, produces the vector
-- (n − 1) :: (n − 2) :: . . . :: 0. (You’ll
-- need to copy the definition of the Vec
-- type below to test if your definition
-- typechecks.)

data Vec (A : Set) : Nat → Set where
  [] : Vec A 0
  _::_ : {n : Nat} → A → Vec A n → Vec A (suc n)

downFrom : (n : Nat) → Vec Nat n
downFrom zero = []
downFrom (suc x) = x :: downFrom x

head : {A : Set}{n : Nat} → Vec A (suc n) → A
head (x :: xs) = x

_++Vec_ : {A : Set} {m n : Nat} → Vec A m → Vec A n → Vec A (m + n)
[] ++Vec ys = ys
(x :: xs) ++Vec ys = x :: (xs ++Vec ys)