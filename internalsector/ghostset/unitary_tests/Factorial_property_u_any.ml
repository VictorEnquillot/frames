open Make_test_v;;

testing "Factorial property_v";;

(* toplevel 
   #use "Factorial_property_u_any.ml";; 

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

let eva_fac = Factorial_property_v.retrieve tag_fac;;

test_number 6 (
eva_fac 
(* : Factorial_property_t.factorial_property *)
= 
Factorial_property_t.Evaluation 120
);;

let soi_fac = [1; 4];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let eva_fac = Factorial_property_v.retrieve tag_fac;;

test_number 7 (
eva_fac 
(* : Factorial_property_t.factorial_property *)
= 
Factorial_property_t.Evaluation 24
);;

let soi_fac = [1; 3];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let eva_fac = Factorial_property_v.retrieve tag_fac;;

test_number 8 (
eva_fac 
(* : Factorial_property_t.factorial_property *)
= 
Factorial_property_t.Evaluation 6
);;


let soi_fac = [1; 2];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let eva_fac = Factorial_property_v.retrieve tag_fac;;

test_number 9 (
eva_fac 
(* : Factorial_property_t.factorial_property *)
= 
Factorial_property_t.Evaluation 2
);;


let soi_fac = [1; 1];;
let tag_fac = Factorial_tag_v.make sym_fac soi_fac;;
let val_fac = Factorial_value_provider_v.provide tag_fac;;
let eva_fac = Factorial_property_v.retrieve tag_fac;;

test_number 10 (
eva_fac 
(* : Factorial_property_t.factorial_property *)
= 
Factorial_property_t.Evaluation 1
);;

Factorial_value_provider_v.dump ();;

