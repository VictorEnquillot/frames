open Make_test_v;;

testing "Elementary_border_parameter_aopef_belt_v with
   Elementary_border_parameter_aopef_belt_u_test_ao.ml";;

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
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_border_parameter_aopef_belt_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;
let nam_cal = "quantum";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

(* Context *) 
let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dbo)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "test_ao"))),
   [6; 5; 7])
);;

open Elementary_border_parameter_aopef_belt_v;;

(* Argument Elementary_border_parameter_aopef_symbol ne 2 p 1 *)

let tag_ele_epa_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_border_parameter_aopef_symbol_off_elementary_symbol s)
    tag_ele_l;;

let tag_ele_epa_hep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> ((Elementary_symbol_v.string_off s = "he p 2 1") && (i = [1; 4; 6; 5; 7])) )
    tag_ele_epa_l;;

let tag_eae_hep21 = Tag_v.map_entity Elementary_symbol_v.elementary_border_parameter_aopef_symbol_off_elementary_symbol tag_ele_epa_hep21;;

let tag_eae = tag_eae_hep21;;

test_number 4 (
(tag_eae :
  Elementary_border_parameter_aopef_symbol_t.elementary_border_parameter_aopef_symbol
  Tag_t.tag ) =
  (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
    (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
      "he p 2 1"),
   [1; 4; 6; 5; 7])
);;

(** {6 Border as list of itself} *)

let bor_eae = border_of_tag tag_eae;;

test_number 5 (
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

let mea_eae = measure_actual_of_tag tag_eae;;

test_number 6 (
( mea_eae :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mle_eae = measure_actual_length_of_tag tag_eae;;

test_number 7 (
(mle_eae : Measure_actual_length_t.measure_actual_length ) =
  (2.28187, Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mca_eae = measure_canonical_of_tag_of_calculation_name tag_eae nam_cal;;

test_number 8 (
( mca_eae :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol
    Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr)
);;

(** {6 Belt} *)

let ben_eae = belt_of_tag tag_eae;;

test_number 9 (
( ben_eae :
  Elementary_border_parameter_aopef_belt_t.elementary_border_parameter_aopef_belt) =
  Elementary_border_parameter_aopef_belt_t.Elementary_border_parameter_aopef_exponent_belt
   ((Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
      "he p 2 1",
     [1; 4; 6; 5; 7]),
    (2.28187, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

(** {6 Extracting Measure off Belt} *)

test_number 10 (
mea_eae = measure_actual_off_belt ben_eae
);;

test_number 11 (
mca_eae = measure_canonical_off_belt_of_calculation_name ben_eae nam_cal
);;

(** {6 Readee : a Generalization of Measure} *)

let run_eae = readee_units_off_belt ben_eae;;

test_number 12 (
(run_eae :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (2.28187,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let rea_eae = readee_off_belt ben_eae;;

test_number 13 (
(rea_eae : Readee_t.readee ) =
  Readee_t.Readee_units
   (2.28187,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

test_number 14 (
rea_eae = readee_of_tag tag_eae
);;

test_number 15 (
run_eae = readee_units_of_tag tag_eae
);;

(** {9 Closure : list of Readee} *)

let clo_eae = closure_off_belt ben_eae;;

test_number 16 (
( clo_eae : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (2.28187,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

test_number 17 (
clo_eae = closure_of_tag tag_eae
);;

(** {6 Float} *)

let flo_eae = float_of_tag tag_eae;;

test_number 18 (
(flo_eae : float ) = 
2.28187
);;

(** {6 Elementary_fence_units} *)

let efu_eae = elementary_fence_units_actual_tag_of_tag tag_eae;;

test_number 19 (
( efu_eae : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol )=
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Bohr
);;

(** {6 Text} *)

let tex_eae = text_of_tag tag_eae;;

test_number 20 (
(tex_eae : string ) = 
"length 2.281870 bohr"
);;
