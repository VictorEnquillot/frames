open Make_test_v;;

testing "Coordinate_formula_v with
   Coordinate_formula_u_any.ml";;

(* toplevel 
   #use "Coordinate_formula_u_any.ml";;

*)

Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

(* Coordinate Tag *)

let sym_coo = Coordinate_symbol_v.make "cylindrical_rho" "rho";;
let soi_poi = [1; 1; 1; 3];; (* in Figure Domain *)

let soi_ele = Sole_index_v.make 1 soi_poi;;
let tag_coo = Tag_v.make sym_coo soi_ele;;
let sym_ele = Elementary_symbol_v.elementary_symbol_of_coordinate_symbol sym_coo;;

Elementary_symbol_by_sole_index_register_v.store soi_ele sym_ele;

Elementary_symbol_by_sole_index_register_v.dump ();;

let tag_ele = Elementary_symbol_by_sole_index_extractor_v.coordinate_tag_off_sole_index soi_ele;;

test_number 2 (
tag_ele
(* Domain_tag_t.domain_tag *)
= 
  (Coordinate_symbol_t.Coordinate_cylindrical_symbol
    (Coordinate_cylindrical_symbol_t.Cylindrical_rho "rho"),
   [1; 1; 1; 1; 3])
);;

let for_coo = Coordinate_formula_v.retrieve tag_coo;;
