open Make_test_v;;

testing "Coordinate_current property_v";;

(* toplevel 
   #use "Coordinate_current_property_u_any.ml";; 

*)

let sym_fac = Coordinate_current_symbol_t.Coordinate_current;;

test_number 1 (
sym_fac
=
Coordinate_current_symbol_t.Coordinate_current
);;

let soi_fac = [1; 5];;
let tag_fac = Coordinate_current_tag_v.make sym_fac soi_fac;;

test_number 2 (
tag_fac
(* : Coordinate_current_symbol_t.factorial_symbol Tag_t.tag *)
=
  (Coordinate_current_symbol_t.Coordinate_current, [1; 5])
);;

let for_fac = Coordinate_current_formula_v.retrieve tag_fac;;

test_number 3 (
for_fac 
(* : Coordinate_current_formula_t.factorial_formula *)
  =
Coordinate_current_formula_t.Coordinate_current
  (Singlet_t.Singlet (Coordinate_current_symbol_t.Coordinate_current, [1; 4]))
);;

let tag_fac_s = Coordinate_current_formula_v.factorial_tag_singlet_off_factorial_tag tag_fac;;

test_number 4 (
tag_fac_s 
(* : Coordinate_current_formula_t.factorial_formula *)
  =
Singlet_t.Singlet (Coordinate_current_symbol_t.Coordinate_current, [1; 4])
);;

let val_fac = Coordinate_current_value_provider_v.provide tag_fac;;

test_number 5 (
val_fac 
(* : Coordinate_current_value_t.factorial_value *)
  =
Coordinate_current_value_t.Coordinate_current_recursive
  (Singlet_t.Singlet
     (Coordinate_current_value_t.Coordinate_current_recursive
	(Singlet_t.Singlet
           (Coordinate_current_value_t.Coordinate_current_recursive
              (Singlet_t.Singlet
		 (Coordinate_current_value_t.Coordinate_current_recursive
		    (Singlet_t.Singlet (Coordinate_current_value_t.Coordinate_current_basic 1))))))))
);;

let eva_fac = Coordinate_current_property_v.retrieve tag_fac;;

test_number 6 (
eva_fac 
(* : Coordinate_current_property_t.factorial_property *)
= 
Coordinate_current_property_t.Evaluation 120
);;

let soi_fac = [1; 4];;
let tag_fac = Coordinate_current_tag_v.make sym_fac soi_fac;;
let val_fac = Coordinate_current_value_provider_v.provide tag_fac;;
let eva_fac = Coordinate_current_property_v.retrieve tag_fac;;

test_number 7 (
eva_fac 
(* : Coordinate_current_property_t.factorial_property *)
= 
Coordinate_current_property_t.Evaluation 24
);;

let soi_fac = [1; 3];;
let tag_fac = Coordinate_current_tag_v.make sym_fac soi_fac;;
let val_fac = Coordinate_current_value_provider_v.provide tag_fac;;
let eva_fac = Coordinate_current_property_v.retrieve tag_fac;;

test_number 8 (
eva_fac 
(* : Coordinate_current_property_t.factorial_property *)
= 
Coordinate_current_property_t.Evaluation 6
);;


let soi_fac = [1; 2];;
let tag_fac = Coordinate_current_tag_v.make sym_fac soi_fac;;
let val_fac = Coordinate_current_value_provider_v.provide tag_fac;;
let eva_fac = Coordinate_current_property_v.retrieve tag_fac;;

test_number 9 (
eva_fac 
(* : Coordinate_current_property_t.factorial_property *)
= 
Coordinate_current_property_t.Evaluation 2
);;


let soi_fac = [1; 1];;
let tag_fac = Coordinate_current_tag_v.make sym_fac soi_fac;;
let val_fac = Coordinate_current_value_provider_v.provide tag_fac;;
let eva_fac = Coordinate_current_property_v.retrieve tag_fac;;

test_number 10 (
eva_fac 
(* : Coordinate_current_property_t.factorial_property *)
= 
Coordinate_current_property_t.Evaluation 1
);;

Coordinate_current_value_provider_v.dump ();;

