open Make_test_v;;

testing "Elementary_fence_units_actual_length_belt_v with
    Elementary_fence_units_actual_length_belt_u_test_ao.ml";;

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
   #use "Elementary_fence_units_actual_length_belt_u_test_ao.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;
let nam_cal = "quantum";;

let nam_mod = "Elementary_fence_units_actual_length_belt_v";;

Parameters_general_register_v.store nam_mod "database-name" nam_dba;;
Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let pre_tag_efu_soi soi (s, i) = 
  (Elementary_symbol_v.is_bohr s) && (soi = i) 
;;
 
let sym_ele_ful = Elementary_symbol_v.bohr;;
let soi_ele_ful = [1; 1; 5; 6; 5; 7];;

let tag_ele_ful = List_v.only_element_of_predicate_off_list (pre_tag_efu_soi soi_ele_ful) tag_ele_l;;

test_number 1 (
(tag_ele_ful : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_symbol
        (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
          Elementary_fence_units_actual_length_symbol_t.Bohr))),
   [1; 1; 5; 6; 5; 7])
);;

open Elementary_fence_units_actual_length_belt_v;; 
     
(* Argument *)

let tag_eul = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_actual_length_symbol_off_elementary_symbol tag_ele_ful;;

test_number 2 (  
(tag_eul :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
  Tag_t.tag ) =
  (Elementary_fence_units_actual_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 7])
);;

(** {6 Belt} *)

let ben_eul = belt_of_tag tag_eul;;

test_number 3 (
( ben_eul :
  (Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol
   Tag_t.tag, Measure_actual_length_t.measure_actual_length)
  Doublet_t.doublet ) =
  ((Elementary_fence_units_actual_length_symbol_t.Bohr, [1; 1; 5; 6; 5; 7]),
   (0.465248, Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

(** {6 Extracting Measure off Belt} *)

let mea_eul = measure_actual_off_belt ben_eul;;

test_number 4 (
( mea_eul :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (0.465248,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let can_mea = measure_canonical_off_belt_of_calculation_name ben_eul nam_cal;;

test_number 5 (
(can_mea :
   (float,
    Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
   Doublet_t.doublet ) =
(0.465248,
 Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol
   Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr)
);;

(** {9 Closure : list of Readee} *)

let clo_eul = closure_off_belt ben_eul;;

test_number 6 (
(clo_eul : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (0.465248,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

test_number 7 (
clo_eul = closure_of_tag tag_eul
);;

(** {6 Float} *)

let flo = float_of_tag tag_eul;;

test_number 8 (
(flo : float ) = 
0.465248
);;

(** {6 Units} *)

let sym_eul = elementary_fence_units_actual_length_tag_of_tag tag_eul;;

test_number 9 (
(sym_eul :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Bohr
);;

(** {6 Text} *)

let tex_eul = text_of_tag tag_eul;;

test_number 10 (
(tex_eul : string ) = 
"length 0.465248 bohr"
);;
