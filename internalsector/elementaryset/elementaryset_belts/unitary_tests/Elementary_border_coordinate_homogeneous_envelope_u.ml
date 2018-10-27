open Make_test_v;;

testing "Elementary_border_coordinate_homogeneous_envelope_v with
   Elementary_border_coordinate_homogeneous_envelope_u.ml";;

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
   #use "Elementary_border_coordinate_homogeneous_envelope_u.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let nam_cal = "classical";;
let sof_ele_ech = "S";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let tag_ele_ech_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol s) tag_ele_l;;

open Elementary_border_coordinate_homogeneous_envelope_v;;

(* First HOM *)

let tag_ele_hom = List.nth tag_ele_ech_l 0;;

test_number 1 (
( tag_ele_hom : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
          (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [1; 1; 1; 4])
);;

let tag_ech = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_homogeneous_symbol_off_elementary_symbol tag_ele_hom;;

test_number 2 (
(tag_ech : 
   Elementary_border_coordinate_homogeneous_symbol_t.elementary_border_coordinate_homogeneous_symbol
   Tag_t.tag ) =
  (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
    (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x"),
   [1; 1; 1; 4])
);;

let fen_l = Elementary_border_coordinate_homogeneous_container_v.fence_list tag_ech;;

test_number 3 (
(fen_l :
  Elementary_border_coordinate_symbol_t.elementary_border_coordinate_symbol Tag_t.tag list ) =
  [(Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
     (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
       (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")),
    [1; 1; 1; 4])]
);;

let dfe_l = Elementary_border_coordinate_homogeneous_container_v.deepfence_list tag_ech;;

test_number 4 (
( dfe_l : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4])]
);;

let env_ech = build tag_ech;;

test_number 5 (
( env_ech :
  Elementary_border_coordinate_homogeneous_envelope_t.elementary_border_coordinate_homogeneous_envelope ) =
  Elementary_border_coordinate_homogeneous_envelope_t.Elementary_border_coordinate_cartesian_envelope
   (Tuple_t.Uno
     [Boundary_t.Boundary_units
       (0.1,
        Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Nanometer)])
);;

let clo_ech = closure tag_ech;;
 
test_number 6 (
(clo_ech : Boundary_t.boundary list ) =
  [Boundary_t.Boundary_units
    (0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let clo_tl = closure_as_tuple_list tag_ech;;

test_number 7 (
(clo_tl : Boundary_t.boundary Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Boundary_t.Boundary_units
      (0.1,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
        Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

