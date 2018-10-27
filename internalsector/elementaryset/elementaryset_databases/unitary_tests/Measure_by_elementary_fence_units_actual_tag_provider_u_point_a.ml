open Make_test_v;;

testing "Measure_by_elementary_fence_units_actual_tag_provider_v with
   Measure_by_elementary_fence_units_actual_tag_provider_u_point_a.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;

(* Tracing *)
(*
Trace_what_by_module_name_register_v.store "Elementary_tag_all_list_by_database_name_n_databox_name_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Measure_by_elementary_fence_units_actual_tag_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Elementary_symbol_by_sole_index_provider_v" "cpu any";;
Trace_what_by_module_name_register_v.store "Db1figure_symbol_by_sole_index_register_filler_v" "cpu any";;

Trace_what_by_module_name_register_v.store "any" "cpu any";;
*)
(* toplevel 
   #use "Measure_by_elementary_fence_units_actual_tag_provider_u_point_a.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

test_number 1 (true);;
let str = Parameters_general_register_v.dump ();;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let str_2 = Parameters_general_register_v.dump ();;

test_number 2 (true);;

(*


let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let sof_ect = "A";;

let pre_tag_rho_sof sof (s, i) = (Elementary_symbol_v.string_off s = sof) && (Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_constructor s);;
let tag_ele_rho = List_v.only_element_of_predicate_off_list (pre_tag_rho_sof sof_ect) tag_ele_l;;

test_number 1 (
(tag_ele_rho : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
            (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
              "A"))))),
   [1; 1; 1; 1; 7])
);;

Format.fprintf Format.std_formatter "%s" (Elementary_symbol_by_sole_index_register_v.dump ());;

let soi_ele_rho = Tag_v.sole_index_off_tag tag_ele_rho;;
let soi_ele_efu = Sole_index_v.make 1 soi_ele_rho;;
let sym_ele_efu = Elementary_symbol_by_sole_index_provider_v.provide soi_ele_efu;; 
let tag_ele_efu = Tag_v.make sym_ele_efu soi_ele_efu;;

open Measure_by_elementary_fence_units_actual_tag_provider_v;;

(* Argument tag_efu *)

let soi_efu = soi_ele_efu;;
let sym_efu = Elementary_symbol_v.elementary_fence_units_symbol_off_elementary_symbol sym_ele_efu;;
let tag_efu = Tag_v.make sym_efu soi_efu;;

test_number 2 (
( tag_efu :
  Elementary_fence_units_symbol_t.elementary_fence_units_symbol Tag_t.tag ) =
  (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol
    (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Meter),
   [1; 1; 1; 1; 1; 7])
);;

(* Argument rho *)

let nam_eba = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_context_database_string_off_off_sole_index 
      soi_efu;;

test_number 3 (
(nam_eba : string ) = 
"db1figure"
);;

let nam_ebo =
	Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_figuredata_string_off_off_sole_index 
	  soi_efu;;

test_number 4 (
(nam_ebo : string ) = 
"point_a"
);;

let tag_ebo = Db1figure_context_databox_tag_by_databox_name_provider_v.provide nam_ebo;;

test_number 5 (
( tag_ebo :
    Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol
    Tag_t.tag ) =
(Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
   "point_a",
 [1; 1; 8; 6])
);;  

let tag_db1_t = Db1figure_tag_tree_by_db1figure_context_databox_tag_provider_v.provide tag_ebo;;
let tag_ect = 
	Elementary_any_category_by_sole_index_extractor_v.elementary_body_coordinate_tuple_tag_off_sole_index 
	  soi_efu;;

let tag_db1_anv_st = 
	db1figure_as_body_sequence_float_tag_subtree_of_db1figure_tag_tree_of_elementary_body_coordinate_tuple 
	  tag_db1_t 
	  tag_ect;;

      let tag_db1_fen = Tree_v.leaf_node_list_off_tree tag_db1_anv_st;;
      let sof_db1_fen = List.map Db1figure_tag_v.string_off tag_db1_fen;;
      let flo_l = List.map String_v.float_of_string sof_db1_fen;;

      let idx_epa = List.nth soi_efu 1;;
      let flo = List.nth flo_l (idx_epa-1);;
      let sym_efu = Tag_v.entity_off_tag tag_efu;;

let mea_efu = Measure_v.make flo sym_efu;;

test_number 6 (
( mea_efu :
  (float, Elementary_fence_units_symbol_t.elementary_fence_units_symbol)
  Doublet_t.doublet ) =
  (1.,
   Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Meter)
);;


test_number 7 (
mea_efu = provide tag_efu
);;


*)
