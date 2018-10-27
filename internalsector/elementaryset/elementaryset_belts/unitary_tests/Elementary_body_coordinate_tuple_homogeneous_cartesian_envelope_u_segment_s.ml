open Make_test_v;;

testing "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v with
   Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_u_segment_s.ml";;

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

Trace_what_by_module_name_register_v.store "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v" "store";;

(* toplevel 
   #use "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_u_segment_s.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let nam_cal = "classical";;
let sof_ele = "S_C";;

let nam_mod = "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v";;

Parameters_general_register_v.store nam_mod "database-name" nam_dba;;
Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let pre_tag_sof sof (s, i) = 
  (Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor s)
    &&
  (Elementary_symbol_v.string_off s = sof)
;;

open Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v;;

(* Argument tag_ehc "S_C" *)

let tag_ele_ehc = List_v.only_element_of_predicate_off_list (pre_tag_sof sof_ele) tag_ele_l;; 

let tag_ehc_sc = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol tag_ele_ehc;;

let tag_ehc = tag_ehc_sc;;

test_number 1 (
( tag_ehc :
  Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
    "S_C",
   [2; 3; 1; 7])
);;

(** {6 Border of Tag} *)

let bor_ehc = border_of_tag tag_ehc;;

test_number 2 (
(bor_ehc :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))),
    [1; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_C")))),
    [2; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_C")))),
    [3; 2; 3; 1; 7])]
);;

(** {6 Envelope of Tag} *)

let env_ehc = envelope_of_tag tag_ehc;;

test_number 3 (
( env_ehc :
  (Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
              "S_C")))),
     [1; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (0.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
              "S_C")))),
     [2; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom));
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
              "S_C")))),
     [3; 2; 3; 1; 7]),
    Readee_t.Readee_units
     (1.,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Angstrom))]
);;

(** {6 Readee of Tag} *)

let rea_l_ehc = readee_list_of_tag tag_ehc;;

test_number 4 (
(rea_l_ehc : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom);
   Readee_t.Readee_units
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;
