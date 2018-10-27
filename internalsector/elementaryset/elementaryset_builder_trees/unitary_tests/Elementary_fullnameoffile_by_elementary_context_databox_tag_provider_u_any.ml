open Make_test_v;;

testing "Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_v with
    Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_v;;

let nam_nbo = "lanl2dz";;

let tag_nbo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 (
( tag_nbo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

let (nam_eba, nam_nbo) =
    Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.provide
      tag_nbo;;
  
test_number 2 (
(nam_eba : string ) =
"nwchem"
);;

let fno_nwc = Elementary_fullnameoffile_by_databox_name_n_database_name_provider_v.provide (nam_eba, nam_nbo);;

test_number 3 (
( fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/lanl2dz.nwc"
);;
