open Make_test_v;;

testing "Elementary_border_coordinate_heterogeneous_spherical_phi_envelope_v with
   Elementary_border_coordinate_heterogeneous_spherical_phi_envelope_u_segment_s.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Db1points_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1points_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1points_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Elementary_border_coordinate_heterogeneous_spherical_phi_envelope_u_segment_s.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "segment_s";;
let nam_cal = "quantum";;

let nam_mod = "Elementary_fence_units_actual_length_belt_v";;


let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let pre_tag_sof sof  (s, i) =
  (Coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_phi_constructor s)
    &&
  (Coordinate_symbol_v.string_off s = sof)
;;

open Elementary_border_coordinate_heterogeneous_spherical_phi_envelope_v;;

(* Argument Elementary_border_coordinate_heterogeneous_spherical_phi_symbol ne 2 p 1 *)

let tag_ele_pae_hep21 = List_v.only_element_of_predicate_off_list (pre_tag_sof "A_A") tag_ele_l;;

let tag_eae_hep21 = Tag_v.map_entity Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_symbol_off_coordinate_symbol tag_ele_pae_hep21;;

test_number 1 (
(tag_eae_hep21 :
   Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.elementary_border_coordinate_heterogeneous_spherical_phi_symbol
   Tag_t.tag ) =
(Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
   "A_A",
 [1; 4; 6; 5; 7])
);;

let tag_eae = tag_eae_hep21;;

(** {6 Belt of Tag} *)

let bel_eae = belt_of_tag tag_eae;;

test_number 2 (
( bel_eae :
  (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.elementary_border_coordinate_heterogeneous_spherical_phi_symbol
   Tag_t.tag,
   (float,
    Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
   Doublet_t.doublet)
  Doublet_t.doublet ) =
((Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
    "A_A",
  [1; 4; 6; 5; 7]),
 (2.28187, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

(** {6 Elementary_border_tag of Tag} *)

let tag_ebo = elementary_border_tag_of_tag tag_eae;;

test_number 3 (
(tag_ebo : Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag ) =
  (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
    (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
      (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
        (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
          "A_A"))),
   [1; 4; 6; 5; 7])
);;
 
(** {6 Readee of Tag} *)

let rea_eae = readee_of_tag tag_eae;;

test_number 4 (
(rea_eae : Readee_t.readee ) =
  Readee_t.Readee_units
   (2.28187,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

(** {6 Envelope of Tag} *)

let env_eae = envelope_of_tag tag_eae;;

test_number 5 (
(env_eae :
  (Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag,
   Readee_t.readee)
  Doublet_t.doublet list ) =
  [((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
          (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
            "A_A"))),
     [1; 4; 6; 5; 7]),
    Readee_t.Readee_units
     (2.28187,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

(** {6 Measure_actual of Tag} *)

let mea_act_eae = measure_actual_of_tag tag_eae;;

test_number 6 (
( mea_act_eae :
  (float,
   Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_can_eae = measure_canonical_of_tag_of_calculation_name tag_eae nam_cal;;

test_number 7 (
( mea_can_eae :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol
    Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr)
);;

let mea_act_l = measure_actual_list_of_tag tag_eae;;

test_number 8 (
( mea_act_l :
  (float,
   Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet list ) =
  [(2.28187,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;


