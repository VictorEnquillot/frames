open Make_test_v;;

testing "Db1figure_from_elementary_tag_translator_v with
   Db1figure_from_elementary_tag_translator_u_any.ml";;

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

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1figure_from_elementary_tag_translator_u_any.ml";;

*)

let nam_dom = "elementary";;
let sof_dom
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
 tag_dom 
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
=
  (Domain_symbol_t.Elementary, [4])
);;

let tag_edo = Elementary_as_context_domain_tag_from_domain_tag_translator_v.translate tag_dom;;

test_number 2 (
tag_edo 
(* : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag *)
=
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary", [4])
);;

test_number 3 (
tag_dom = Domain_tag_from_elementary_context_domain_tag_translator_v.translate tag_edo
);;

let tag_ddo = Db1figure_domain_tag_from_elementary_context_domain_tag_translator_v.translate tag_edo;;
test_number 4 (
 tag_ddo 
(* : Db1figure_domain_symbol_t.db1figure_domain_symbol Tag_t.tag *) =
  (Db1figure_domain_symbol_t.Db1figure_domain_constructor
    Domain_symbol_t.Elementary,
   [4])
);;

test_number 5 (
tag_ddo = Db1figure_domain_tag_from_domain_tag_translator_v.translate tag_dom
);;

let tag_d1d_dom = Db1figure_tag_from_elementary_context_domain_tag_translator_v.translate tag_edo;;

test_number 6 (
tag_d1d_dom 
(* : Db1figure_symbol_t.db1figure_symbol *)
=
  Db1figure_symbol_t.Db1figure_context_symbol
   (Db1figure_context_symbol_t.Db1figure_domain_symbol
     (Db1figure_domain_symbol_t.Db1figure_domain_constructor
       Domain_symbol_t.Elementary))
);;

let sym_ele_dom = Elementary_symbol_from_db1figure_domain_tag_translator_v.translate tag_ddo;;
let sym_edo = Elementary_symbol_v.elementary_context_domain_symbol_off_elementary_symbol sym_ele_dom;;



