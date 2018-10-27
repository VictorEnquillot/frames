open Make_test_v;;

testing "Factorial formula_v";;

(* toplevel 
   #use "Factorial_formula_u_any.ml";; 

*)

let sym_fac = Factorial_symbol_t.Factorial;;

test_number 1 (
sym_fac
=
Factorial_symbol_t.Factorial
);;

let soi_fac = [1; 5];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;

test_number 2 (
tag_fac
(* : Factorial_symbol_t.factorial_symbol Tag_t.tag *)
=
  (Factorial_symbol_t.Factorial, [1; 5])
);;

let for_fac = Factorial_formula_v.retrieve tag_fac;;

test_number 3 (
for_fac 
(* : Factorial_formula_t.factorial_formula *)
  =
Factorial_formula_t.Factorial
  (Singlet_t.Singlet (Factorial_symbol_t.Factorial, [1; 4]))
);;

let tag_fac_s = Factorial_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac;;

test_number 4 (
tag_fac_s 
(* : Factorial_formula_t.factorial_formula *)
  =
Singlet_t.Singlet (Factorial_symbol_t.Factorial, [1; 4])
);;

