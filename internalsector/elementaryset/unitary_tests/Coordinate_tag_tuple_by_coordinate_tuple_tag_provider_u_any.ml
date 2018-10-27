open Make_test_v;;

testing "Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_v with
   Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_u_any.ml";;

(* toplevel 
   #use "Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_u_any.ml";; 

*)

let sym_ctu = Coordinate_tuple_symbol_v.make "coordinate_tuple_cylindrical" "";;
let soi_ctu = [1; 2; 3];; (* fake *)
let tag_ctu = Tag_v.make sym_ctu soi_ctu;;
let tag_coo_t = Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_v.provide tag_ctu;;

test_number 1 (
sym_ctu
(* : Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_t.coordinate_tag_tuple_by_coordinate_tuple_tag_provider *)
= 
  Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_t.Coordinate_tag_tuple_by_coordinate_tuple_tag_provider_cylindrical
);;

