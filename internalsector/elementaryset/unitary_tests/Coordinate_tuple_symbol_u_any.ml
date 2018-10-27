open Make_test_v;;

testing "Coordinate_tuple_symbol_v with
   Coordinate_tuple_symbol_u_any.ml";;

(* toplevel 
   #use "Coordinate_tuple_symbol_u_any.ml";; 

*)

let sym_ctu = Coordinate_tuple_symbol_v.make "coordinate_tuple_cylindrical" "";;

test_number 1 (
sym_ctu
(* : Coordinate_tuple_symbol_t.coordinate_tuple *)
= 
  Coordinate_tuple_symbol_t.Coordinate_tuple_cylindrical
);;

