open Make_test_v;;

testing "Measure_length_v with
   Measure_length_u_test_ao.ml";;

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

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Measure_length_u_test_ao.ml";;

*)

let nam_cal = "quantum";;
let nam_dba = "nwchem";;
let nam_dna = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

open Measure_length_v;;

let flo = 54.7;;

(* Angstrom *) 

let sym_eul = Elementary_fence_units_actual_length_symbol_v.angstrom;;
let mle_ang = make flo sym_eul;;

test_number 1 (
(mle_ang :
  (float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Doublet_t.doublet ) = 
(54.7, Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

test_number 2 (
mle_ang = make_of_string_of_string_of_string "54.7" "angstrom" ""
);;

let nam_mle_ang = name mle_ang;;

test_number 3 (
(nam_mle_ang : string ) = 
"(54.700000, angstrom)"
);;

(** {9 Float} *)

test_number 4 (
flo = float_off_measure_length mle_ang
);;

(** {9 Elementary_fence_units_actual_length_symbol} *)

let sym_eul = elementary_fence_units_actual_length_symbol_off_measure_length mle_ang;;

test_number 5 (
( sym_eul :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Angstrom
);;

(** {9 Coercing Up} *)

let mea = measure_of_measure_length mle_ang;;

test_number 6 (
( mea :
  (float, Elementary_fence_units_symbol_t.elementary_fence_units_symbol)
  Doublet_t.doublet ) =
  (54.7,
   Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

(** {9 Coercing Down} *)

test_number 7 (
mle_ang = measure_length_off_measure mea
);;

(** {6 Canonicalizing} *)

let sym_efu = 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_actual_length_symbol
      sym_eul;;

test_number 8 (
(sym_efu : Elementary_fence_units_symbol_t.elementary_fence_units_symbol ) =
  Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Angstrom
);;

let can_mle = measure_canonical_of_measure_length_of_calculation_name mle_ang nam_cal;;

test_number 9 (
(can_mle : (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (103.368019013708903,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_quantum_symbol
    Elementary_fence_units_canonical_quantum_symbol_t.Canonical_quantum_length_bohr)
);;

(** {6 Naming} *)

let nam_mle = name mle_ang;;

test_number 10 (
(nam_mle : string ) = 
"(54.700000, angstrom)"
);;

let fln_mle_ang = fullname mle_ang;;

test_number 11 (
(fln_mle_ang : string ) = 
 "(54.700000, Elementary_fence_units_actual_length_symbol_t.Angstrom \"\")"
);;

(** {6 Printing} *)

print mle_ang;;

(** {6 Unary Operations} *)

let squ_mle = square mle_ang;;

test_number 12 (
(squ_mle :
  (float,
   Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
  Doublet_t.doublet ) = 
  (2992.09, Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

test_number 13 (
mle_ang = square_root squ_mle
);; 

test_number 14 (
mle_ang = absolute_value mle_ang
);;
