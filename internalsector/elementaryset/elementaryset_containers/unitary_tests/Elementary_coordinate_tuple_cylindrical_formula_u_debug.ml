open Make_test_v;;

testing "Elementary_coordinate_tuple_cylindrical_formula_v with
   Elementary_coordinate_tuple_cylindrical_formula_u_debug.ml";;

(* toplevel 
   #use "Elementary_coordinate_tuple_cylindrical_formula_u_debug.ml";;

*)


let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

(* Elementary_coordinate_tuple_cylindrical Tag *)

let sym_ctc = Elementary_coordinate_tuple_cylindrical_symbol_v.make "coordinate_tuple_cylindrical_constructor" "cylindrical_trio";;
let soi_poi = [1; 1; 1; 3];; (* Ex.: in Figure Domain *)

let soi_ctc = Sole_index_v.make 1 soi_poi;;
let tag_ctc = Tag_v.make sym_ctc soi_ctc;;
let sym_ctc = Elementary_symbol_v.elementary_symbol_of_elementary_coordinate_tuple_cylindrical_symbol sym_ctc;;

Elementary_symbol_by_sole_index_register_v.store soi_ctc sym_ctc;
Elementary_symbol_by_sole_index_register_v.dump ();;

let tag_ctc = Elementary_any_category_by_sole_index_extractor_v.elementary_coordinate_tuple_cylindrical_tag_off_sole_index soi_ctc;;

test_number 2 (
tag_ctc
(* :  Elementary_coordinate_tuple_cylindrical_symbol_t.coordinate_tuple_cylindrical_symbol
  Tag_t.tag *)
=
  (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
    "cylindrical_trio",
   [1; 1; 1; 1; 3])
);;

let for_ctc = Elementary_coordinate_tuple_cylindrical_formula_v.container_of_tag tag_ctc;;

test_number 3 (
for_ctc 
(* :
  (Elementary_coordinate_tuple_cylindrical_symbol_t.coordinate_tuple_cylindrical_symbol,
   Elementary_coordinate_cylindrical_symbol_t.coordinate_cylindrical_symbol Tag_t.tag
   Trio_t.trio)
  Doublet_t.doublet *)
=
  (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
    "cylindrical_trio",
   ((Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho "cylindrical_rho",
     [1; 1; 1; 1; 1; 3]),
    (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_phi "cylindrical_phi",
     [2; 1; 1; 1; 1; 3]),
    (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed "cylindrical_zed",
     [3; 1; 1; 1; 1; 3])))
);;

let tag_ccy_t = Elementary_coordinate_tuple_cylindrical_formula_v.elementary_coordinate_cylindrical_tag_trio_off_elementary_coordinate_tuple_cylindrical_formula for_ctc;;

test_number 4 (
tag_ccy_t 
(* : Elementary_coordinate_cylindrical_symbol_t.coordinate_cylindrical_symbol Tag_t.tag
  Trio_t.trio *)
=
  ((Elementary_coordinate_cylindrical_symbol_t.Cylindrical_rho "cylindrical_rho",
    [1; 1; 1; 1; 1; 3]),
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_phi "cylindrical_phi",
    [2; 1; 1; 1; 1; 3]),
   (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed "cylindrical_zed",
    [3; 1; 1; 1; 1; 3]))
);;

let tag_ccy_zed =  Elementary_coordinate_tuple_cylindrical_formula_v.elementary_coordinate_cylindrical_zed_tag_off_elementary_coordinate_tuple_cylindrical_tag tag_ctc;;

test_number 5 (
tag_ccy_zed 
(* : Elementary_coordinate_cylindrical_symbol_t.coordinate_cylindrical_symbol Tag_t.tag *)
=
  (Elementary_coordinate_cylindrical_symbol_t.Cylindrical_zed "cylindrical_zed",
   [3; 1; 1; 1; 1; 3])
);;
