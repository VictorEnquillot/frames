open Make_test_v;;

testing "Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_v with
    Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_u_any.ml";;

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
   #use "Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_v;;

let nam_dbo = "LANL2DZ";;

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "LANL2DZ",
   [5; 5; 22; 6])
);;

let (nam_dba, nam_dbo) =
    Databox_name_n_database_name_by_parameter_context_databox_tag_provider_v.provide
      tag_pbo;;
  
test_number 2 (
(nam_dba : string ) =
"nwchem"
);;

let fno_nwc = Parameter_fullnameoffile_by_databox_name_n_database_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 3 (
( fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/LANL2DZ.nwc"
);;
