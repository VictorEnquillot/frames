open Make_test_v;;

testing "Elementary_border_parameter_aopef_exponent_belt_v with
   Elementary_border_parameter_aopef_exponent_belt_u_test_ao.ml";;

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

(* toplevel 
   #use "Elementary_border_parameter_aopef_exponent_belt_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;
let nam_cal = "quantum";;
let nam_mod = "Elementary_border_parameter_aopef_exponent_belt_v";;

Parameters_general_register_v.store nam_mod "database-name" nam_dba;;
Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

open Elementary_border_parameter_aopef_exponent_belt_v;;

(* Argument Elementary_border_parameter_aopef_exponent_symbol ne 2 p 1 *)

let tag_ele_eae_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_border_parameter_aopef_exponent_constructor s)
    tag_ele_l;;

let tag_ele_eae_hep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Elementary_symbol_v.string_off s = "he p 2 1")
    tag_ele_eae_l;;

let tag_eae_hep21 = Tag_v.map_entity Elementary_symbol_v.elementary_border_parameter_aopef_exponent_symbol_off_elementary_symbol tag_ele_eae_hep21;;

let tag_eae = tag_eae_hep21;;

test_number 1 (
(tag_eae :
  Elementary_border_parameter_aopef_exponent_symbol_t.elementary_border_parameter_aopef_exponent_symbol
   Tag_t.tag ) =
  (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
    "he p 2 1",
   [1; 4; 6; 5; 7])
);;

(** {6 Border as list of itself} *)

let bor_eae = border_of_tag tag_eae;;

test_number 2 (
(bor_eae :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_parameter_symbol
     (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
       (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
         (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
           "he p 2 1"))),
    [1; 4; 6; 5; 7])]
);;

(** {6 Extraction from Database : Measure} *)

let mal_eae = measure_actual_length_of_tag tag_eae;;

test_number 3 (
( mal_eae : Measure_actual_length_t.measure_actual_length ) =
(2.28187, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_act_eae = measure_actual_of_tag tag_eae;;

test_number 4 (
(mea_act_eae :
  (float,
   Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_can_eae = measure_canonical_of_tag_of_calculation_name tag_eae nam_cal;;

test_number 5 (
( mea_can_eae :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol
    Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr)
);;

(** {6 Belt} *)

let ben_eae = belt_of_tag tag_eae;;

test_number 6 (
( ben_eae :
    (Elementary_border_parameter_aopef_exponent_symbol_t.elementary_border_parameter_aopef_exponent_symbol
       Tag_t.tag,
     (float,
      Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
       Doublet_t.doublet)
    Doublet_t.doublet ) =
((Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
    "he p 2 1",
  [1; 4; 6; 5; 7]),
 (2.28187, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

(** {6 Extracting Measure off Belt} *)

test_number 7 (
mal_eae = measure_actual_length_off_belt ben_eae 
);;

test_number 8 (
mea_act_eae = measure_actual_off_belt ben_eae
);;

test_number 9 (
mea_can_eae = measure_canonical_off_belt_of_calculation_name ben_eae nam_cal
);;

(** {6 Readee : a Generalization of Measure} *)

let rea_eae = readee_off_belt ben_eae;;

test_number 10 (
(rea_eae : Readee_t.readee ) =
  Readee_t.Readee_units
   (2.28187,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

test_number 11 (
rea_eae = readee_of_tag tag_eae
);;

(** {9 Closure : list of Readee} *)

let clo_eae = closure_off_belt ben_eae;;

test_number 12 (
( clo_eae : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (2.28187,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

test_number 13 (
clo_eae = closure_of_tag tag_eae
);;

(** {6 Float} *)

let flo_eae = float_of_tag tag_eae;;

test_number 14 (
(flo_eae : float ) = 
2.28187
);;

(** {6 Elementary_fence_units} *)

let eua_eae = elementary_fence_units_actual_tag_of_tag tag_eae;;

test_number 15 (
( eua_eae :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Bohr
);;

(** {6 Text} *)

let tex_eae = text_of_tag tag_eae;;

test_number 16 (
(tex_eae : string ) = 
"length 2.281870 bohr"
);;
