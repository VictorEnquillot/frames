open Make_test_v;;

testing "Natural_symbol_v with
   Natural_symbol_u_any.ml";;

(* toplevel 
   #use "Natural_symbol_u_any.ml";; 

*)

let sym_x = Natural_symbol_v.make "variable" "";;

test_number 1 (
sym_x
(* : Natural_symbol_t.natural_symbol *)
=
  Natural_symbol_t.Expression_symbol
   (Expression_symbol_t.Expression_atomic_symbol
     (Expression_atomic_symbol_t.Variable ""))
);;

let sym_zero = Natural_symbol_v.zero;;

test_number 2 (
sym_zero
(* : Natural_symbol_t.naturalset_symbol *)
=
 Natural_symbol_t.Expression_symbol
   (Expression_symbol_t.Expression_atomic_symbol
     (Expression_atomic_symbol_t.Expression_atomic_digit_symbol
       Expression_atomic_digit_symbol_t.Zero))
);;

let nam_zero = Natural_symbol_v.name sym_zero;;

test_number 3 (
nam_zero 
(* : string *)
=
"zero"
);;

let str_zero = Natural_symbol_v.string_off sym_zero;;

test_number 4 (
str_zero 
(* : string *)
= 
""
);;

let lna_zero = Natural_symbol_v.longname sym_zero;;

test_number 5 (
lna_zero 
(* : string *)
=
"Natural_symbol_t.Zero"
);;

let fna_zero = Natural_symbol_v.fullname sym_zero;;

test_number 6 (
fna_zero 
(* : string *)
=
"Natural_symbol_t.Zero \"\""
);;

