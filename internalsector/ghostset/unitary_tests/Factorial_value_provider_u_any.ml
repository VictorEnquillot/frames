open Make_test_v;;

testing "Factorial_value_provider_v";;

(* toplevel 
   #use "Factorial_value_provider_u_any.ml";; 

*)


let sym_fac = Factorial_symbol_t.Factorial;;

test_number 1 (
sym_fac
=
Factorial_symbol_t.Factorial
);;

(* let soi_fac = [1; 1; 1; 1; 1];; *)
(* let tag_fac = Factorial_tag_v.make sym_fac soi_fac;; *)
(* let val_fac = Factorial_value_provider_v.provide tag_fac;; *)
(* let nam_fac = Factorial_tag_v.name tag_fac;; *)

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

let val_fac = Factorial_value_provider_v.provide tag_fac;;

test_number 5 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
Factorial_value_t.Factorial_recursive
  (Singlet_t.Singlet
     (Factorial_value_t.Factorial_recursive
	(Singlet_t.Singlet
           (Factorial_value_t.Factorial_recursive
              (Singlet_t.Singlet
		 (Factorial_value_t.Factorial_recursive
		    (Singlet_t.Singlet (Factorial_value_t.Factorial_basic 1))))))))
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 6 (
nam_fac 
(* : string *)
= 
"1.2.3.4.5"
);;

let soi_fac = [1; 4];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 7 (
nam_fac 
(* : string *)
= 
"1.2.3.4"
);;

let soi_fac = [1; 3];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 8 (
nam_fac 
(* : string *)
=
"1.2.3"
);;


let soi_fac = [1; 2];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 9 (
nam_fac 
(* : string *)
= 
"1.2"
);;


let soi_fac = [1; 1];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 10 (
nam_fac 
(* : string *)
= 
"1"
);;

Factorial_value_provider_v.dump ();;

