open Make_test_v;;

testing "Elementary_context_database_envelope_v with
   Elementary_context_database_envelope_u.ml";;

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
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_context_database_envelope_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* To fill register : Improve *)

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let dfe_ecr = Elementary_context_database_container_v.deepfence_list tag_ecr;;
let dfe_ecr_sl = List_v.sublist_of_int_of_length_of_list 0 2 dfe_ecr;;

test_number 2 (
(dfe_ecr_sl :
  Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 2; 1; 1; 4])]
);;

open Elementary_context_database_envelope_v;; 

let clo_ecr = closure tag_ecr;;
let clo_ecr_sl = List_v.sublist_of_int_of_length_of_list 0 2 clo_ecr;;

test_number 3 (
(clo_ecr_sl : Boundary_t.boundary list ) =
  [Boundary_t.Boundary_units
    (0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer);
   Boundary_t.Boundary_units
    (0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let env_ecr = build tag_ecr;;
let env_ecr_sl = List_v.sublist_of_int_of_length_of_list 0 2 env_ecr;;

test_number 4 (
(env_ecr_sl : Boundary_t.boundary list list ) =
  [[Boundary_t.Boundary_units
     (0.1,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer);
    Boundary_t.Boundary_units
     (0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer);
    Boundary_t.Boundary_units
     (-0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer)];
   [Boundary_t.Boundary_units
     (1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom);
    Boundary_t.Boundary_units
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Degree);
    Boundary_t.Boundary_units
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom)]]
);;

let nam_env_ecr = name env_ecr;;

test_number 5 (
( nam_env_ecr : string ) =
  "[ [ (0.100000, nanometer) (0.200000, nanometer) (-0.200000, nanometer) ] [ (1.000000, angstrom) (0.000000, degree) (0.000000, angstrom) ] [ (1.000000, angstrom) (90.000000, degree) (1.000000, angstrom) ] [ (1.000000, meter) (0.785398, radian) (0.785398, radian) ] [ (0.000000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ] [ (0.200000, nanometer) (0.000000, nanometer) (-0.200000, nanometer) ] [ (1.000000, nanometer) (0.500000, nanometer) (-2.000000, nanometer) ] [ (0.000000, nanometer) (0.000000, nanometer) (-2.000000, nanometer) ] [ (2.000000, nanometer) (0.000000, nanometer) (-2.000000, nanometer) ] [ (0.000000, angstrom) (0.000000, angstrom) (-3.000000, angstrom) ] [ (0.000000, angstrom) (1.000000, angstrom) (-3.000000, angstrom) ] [ (1.000000, angstrom) (0.000000, angstrom) (-3.000000, angstrom) ] ]"
);;
