open Make_test_v;;

testing "Elementary_coordinate_tuple_polar_container_v with
   Elementary_coordinate_tuple_polar_container_u_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;








(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-build" "false";;

(* toplevel 
   #use "Elementary_coordinate_tuple_polar_container_u_debug.ml";;

*)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_string_of_sole_index_up nam_dom "" [];;

test_number 1 (
(tag_dom : Domain_symbol_t.domain_symbol Tag_t.tag ) =
  (Domain_symbol_t.Figure, [6])
);;

(* Elementary_coordinate_tuple_polar Tag *)

let sym_ctp = Elementary_coordinate_tuple_polar_symbol_v.make "elementary_coordinate_tuple_polar_constructor" "polar_duo";;

test_number 2 (
(sym_ctp :
  Elementary_coordinate_tuple_polar_symbol_t.elementary_coordinate_tuple_polar_symbol ) =
  Elementary_coordinate_tuple_polar_symbol_t.Elementary_coordinate_tuple_polar_constructor
   "polar_duo"
);;

let soi_poi = [5; 9; 8; 6];; (* Fake Ex.: in Figure Domain *)
let soi_ctp = Sole_index_v.make 1 soi_poi;;
let tag_ctp = Tag_v.make sym_ctp soi_ctp;;

let sym_ele_ctp = Elementary_symbol_v.elementary_symbol_of_elementary_coordinate_tuple_polar_symbol sym_ctp;;

Elementary_symbol_by_sole_index_register_v.store soi_ctp sym_ele_ctp;
Elementary_symbol_by_sole_index_register_v.dump ();;

let tag_ctp = Elementary_any_category_by_sole_index_extractor_v.elementary_coordinate_tuple_polar_tag_off_sole_index soi_ctp;;

test_number 3 (
(tag_ctp :
  Elementary_coordinate_tuple_polar_symbol_t.elementary_coordinate_tuple_polar_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_tuple_polar_symbol_t.Elementary_coordinate_tuple_polar_constructor
    "polar_duo",
   [1; 5; 9; 8; 6])
);;

let tag_ele_ctp_t = Elementary_tag_tree_by_coordinate_tuple_polar_tag_provider_v.provide tag_ctp;;

test_number 4 (
tag_ele_ctp_t
(* : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree *)
=
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_coordinate_tuple_symbol
      (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
        (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_polar_symbol
          (Elementary_coordinate_tuple_polar_symbol_t.Elementary_coordinate_tuple_polar_constructor
            "polar_duo"))),
     [1; 1; 1; 1; 3]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_coordinate_symbol
        (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
          (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_polar_symbol
            (Elementary_coordinate_polar_symbol_t.Polar_rho "polar_rho"))),
       [1; 1; 1; 1; 1; 3]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Units_symbol
         (Units_symbol_t.Units_length_symbol Units_length_symbol_t.Meter),
        [1; 1; 1; 1; 1; 1; 3])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_coordinate_symbol
        (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
          (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_polar_symbol
            (Elementary_coordinate_polar_symbol_t.Polar_theta "polar_theta"))),
       [2; 1; 1; 1; 1; 3]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Units_symbol
         (Units_symbol_t.Units_angle_symbol Units_angle_symbol_t.Radian),
        [1; 2; 1; 1; 1; 1; 3])])])
);;

open Elementary_coordinate_tuple_polar_container_v;;

let tag_cpo_l = build tag_ctp;;

test_number 5 (
tag_cpo_l 
(* : Elementary_coordinate_polar_symbol_t.coordinate_polar_symbol Tag_t.tag list *)
=
[(Elementary_coordinate_polar_symbol_t.Polar_rho "polar_rho", [1; 1; 1; 1; 1; 3]);
 (Elementary_coordinate_polar_symbol_t.Polar_theta "polar_theta", [2; 1; 1; 1; 1; 3])]
);;

let tag_cpo_d = container_of_tag tag_ctp;;

test_number 6 (
tag_cpo_d 
(* : Elementary_coordinate_polar_symbol_t.coordinate_polar_symbol Tag_t.tag Duo_t.duo *)
=
((Elementary_coordinate_polar_symbol_t.Polar_rho "polar_rho", [1; 1; 1; 1; 1; 3]),
 (Elementary_coordinate_polar_symbol_t.Polar_theta "polar_theta", [2; 1; 1; 1; 1; 3]))
);;

let tag_cpo_theta = coordinate_polar_theta_tag_off_elementary_coordinate_tuple_polar_tag tag_ctp;;

test_number 7 (
tag_cpo_theta 
(* : Elementary_coordinate_polar_symbol_t.coordinate_polar_symbol Tag_t.tag *)
=
  (Elementary_coordinate_polar_symbol_t.Polar_theta "polar_theta", [2; 1; 1; 1; 1; 3])
);;
