open Make_test_v;;

testing "Elementary_body_coordinate_tuple_cylindrical_formula_v with
   Elementary_body_coordinate_tuple_cylindrical_envelope_u.ml";;

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
   #use "Elementary_body_coordinate_tuple_cylindrical_envelope_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* Elementary_border_coordinate_cylindrical Tag : Cylindrical_rho *)

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

open Elementary_body_coordinate_tuple_cylindrical_envelope_v;;

(* BC_B Tuple *)

let sof_ele_ctc = "BC_B";;
let tag_ele_ctc = List.find (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ctc) tag_ele_l;;

test_number 2 (
(tag_ele_ctc : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_cylindrical_symbol
          (Elementary_body_coordinate_tuple_cylindrical_symbol_t.Elementary_body_coordinate_tuple_cylindrical_constructor
            "BC_B")))),
   [1; 1; 4])
);;

let tag_etc = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_cylindrical_symbol_off_elementary_symbol tag_ele_ctc;;

test_number 3 (
( tag_etc :
  Elementary_body_coordinate_tuple_cylindrical_symbol_t.elementary_body_coordinate_tuple_cylindrical_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_cylindrical_symbol_t.Elementary_body_coordinate_tuple_cylindrical_constructor
    "BC_B",
   [1; 1; 4])
);;

let env_etc = build tag_etc;;

test_number 4 (
(env_etc : Measure_t.measure list Trio_t.trio) =
  ([(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)],
   [(0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree)],
   [(0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)])
);;

let end_etc = envelope_as_trio tag_etc;;
 
test_number 5 (
 end_etc = env_etc 
);;

let ent_etc = envelope_as_tuple tag_etc;;

test_number 6 (
(ent_etc : Measure_t.measure list Tuple_t.tuple ) =
  Tuple_t.Trio
   ([(1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom)],
    [(0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Degree)],
    [(0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom)])
);;

let cun_etc = closure_units tag_etc;;

test_number 7 (
(cun_etc : Measure_t.measure list ) =
  [(1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom);
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
     Elementary_fence_units_angle_symbol_t.Degree);
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

let cun_etc_d = closure_units_as_trio tag_etc;;

test_number 8 (
(cun_etc_d : Measure_t.measure Trio_t.trio ) =
  ((1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom),
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
     Elementary_fence_units_angle_symbol_t.Degree),
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom))
);;

let cun_etc_t = closure_units_as_tuple tag_etc;;
 
test_number 9 (
(cun_etc_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom),
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree),
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom))
);;

let ent_etc_l = closure_units_as_tuple_list tag_etc;;

test_number 10 (
(ent_etc_l : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom),
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Degree),
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom))]
);;
