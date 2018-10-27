open Make_test_v;;

testing "Elementary_coordinate_formula_v with
   Elementary_coordinate_formula_u_debug.ml";;

(* toplevel 
   #use "Elementary_coordinate_formula_u_debug.ml";;

*)


let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

(* Elementary_coordinate Tag *)

let sym_coo = Elementary_coordinate_symbol_v.make "cylindrical_rho" "rho";;
let soi_poi = [1; 1; 1; 3];; (* in Figure Domain *)

let soi_ele = Sole_index_v.make 1 soi_poi;;
let tag_coo = Tag_v.make sym_coo soi_ele;;
let sym_ele = Elementary_symbol_v.elementary_symbol_of_elementary_coordinate_symbol sym_coo;;

Elementary_symbol_by_sole_index_register_v.store soi_ele sym_ele;

Elementary_symbol_by_sole_index_register_v.dump ();;

let tag_ele = Elementary_any_category_by_sole_index_extractor_v.elementary_coordinate_tag_off_sole_index soi_ele;;

test_number 2 (
tag_ele
(* Domain_tag_t.domain_tag *)
= 
  (Elementary_coordinate_symbol_t.Elementary_coordinate_cylindrical_symbol
    (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho "rho"),
   [1; 1; 1; 1; 3])
);;

let for_coo = Elementary_coordinate_formula_v.container_of_tag tag_coo;;
