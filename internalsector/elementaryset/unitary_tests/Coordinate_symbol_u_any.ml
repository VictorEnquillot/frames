open Make_test_v;;

testing "Coordinate_symbol_v with
   Coordinate_symbol_u_any.ml";;

(* toplevel 
   #use "Coordinate_symbol_u_any.ml";; 

*)

let sym_coo = Coordinate_symbol_v.make "cylindrical_rho" "rho";;

test_number 1 (
sym_coo
(* : Coordinate_symbol_t.coordinate *)
= 
Coordinate_symbol_t.Coordinate_cylindrical_symbol
  (Coordinate_cylindrical_symbol_t.Cylindrical_rho "rho")
);;


let sym_ele = Elementary_symbol_v.cylindrical_rho "rho";;

test_number 2 (
 sym_ele 
(* : Elementary_symbol_t.elementary_symbol *)
=
  Elementary_symbol_t.Coordinate_symbol
   (Coordinate_symbol_t.Coordinate_cylindrical_symbol
     (Coordinate_cylindrical_symbol_t.Cylindrical_rho "rho"))
);;
