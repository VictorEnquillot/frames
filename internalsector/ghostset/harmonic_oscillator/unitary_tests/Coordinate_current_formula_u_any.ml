open Make_test_v;;

testing "Coordinate_current formula_v";;

(* toplevel 
   #use "Coordinate_current_formula_u_any.ml";; 

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

