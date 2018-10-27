open Make_test_v;;

testing "Elementary_border_coordinate_cartesian_formula_v with
   Elementary_border_coordinate_cartesian_envelope_u.ml";;

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
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;










(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_border_coordinate_cartesian_envelope_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* Elementary_border_coordinate_cartesian Tag : Cartesian_x *)

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_ccx_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_cartesian_x s) tag_ele_l;;

(* First X *)

let tag_ele_x = List.nth tag_ele_ccx_l 0;;

test_number 2 (
( tag_ele_x : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
          (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [1; 3; 1; 4])
);;

let tag_ecc = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_cartesian_symbol_off_elementary_symbol tag_ele_x;;

test_number 3 (
( tag_ecc : Elementary_border_coordinate_cartesian_symbol_t.elementary_border_coordinate_cartesian_symbol
  Tag_t.tag ) =
  (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x",
   [1; 3; 1; 4])
);;

open Elementary_border_coordinate_cartesian_envelope_v;;

let fen_l = Elementary_border_coordinate_cartesian_container_v.fence_list tag_ecc;;

test_number 4 (
(fen_l : Elementary_border_coordinate_symbol_t.elementary_border_coordinate_symbol Tag_t.tag list ) =
  [(Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
     (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
       (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")),
    [1; 3; 1; 4])]
);;

let dfe_ect_l = Elementary_border_coordinate_cartesian_container_v.deepfence_list tag_ecc;;

test_number 5 (
(dfe_ect_l : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom,
    [1; 1; 3; 1; 4])]
);;

let env_ecc = build tag_ecc;;

test_number 6 (
(env_ecc : Measure_t.measure list Uno_t.uno ) =
  [(1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let ent_ecc = envelope_as_tuple tag_ecc;;

test_number 7 (
(ent_ecc : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_ecc = closure_units tag_ecc;;
 
test_number 8 (
(cun_ecc : Closure_units_t.closure_units ) =
 [(1.,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_ecc_t = closure_units_as_tuple tag_ecc;;

test_number 9 (
( cun_ecc_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Uno
   (1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

let cun_ecc_tl = closure_units_as_tuple_list tag_ecc;;

test_number 10 (
( cun_ecc_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let clo_ecc = closure tag_ecc;;
 
test_number 11 (
(clo_ecc : Closure_t.closure ) =
  Closure_t.Closure_units
   [(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

