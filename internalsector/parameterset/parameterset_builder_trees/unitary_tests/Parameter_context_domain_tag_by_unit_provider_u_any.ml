open Make_test_v;;

testing "Parameter_context_domain_tag_by_unit_provider_v with
    Parameter_context_domain_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Parameter_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Parameter_context_domain_tag_by_unit_provider_v;;

let fnd_cur = Unix.getcwd ();;

test_number 1 (
(fnd_cur : string ) =
  "/keep/sources/ocaml_top/setup/frames/internalsector/parameterset/parameterset_builder_trees/unitary_tests"
);;

let (nam_dom, nam_sec) = 
  Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
( nam_dom : string ) = 
"parameter"
);;

test_number 3 (
(nam_sec : string ) = 
"internal"
);;

let soi_dom = 
  Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
    (nam_dom, nam_sec) ;;

test_number 4 (
(soi_dom : int list ) = 
[6; 5]
);;

let sym_ecd = 
    Parameter_context_domain_symbol_v.parameter_context_domain_constructor 
    nam_dom ;;

test_number 5 (
(sym_ecd :
  Parameter_context_domain_symbol_t.parameter_context_domain_symbol ) =
  Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
   "parameter"
);;

let tag_ecd  = Tag_v.make sym_ecd soi_dom;;

test_number 6 (
( tag_ecd :
  Parameter_context_domain_symbol_t.parameter_context_domain_symbol
  Tag_t.tag ) =
  (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
    "parameter",
   [6; 5])
);;

test_number 7 (
tag_ecd = provide ()
);;
