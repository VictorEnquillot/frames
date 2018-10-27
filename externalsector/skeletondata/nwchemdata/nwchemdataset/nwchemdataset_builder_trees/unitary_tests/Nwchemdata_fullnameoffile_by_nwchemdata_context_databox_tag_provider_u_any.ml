open Make_test_v;;

testing "Nwchemdata_fullnameoffile_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_fullnameoffile_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;




(* Tracing *)


(* toplevel 
   #use "Nwchemdata_fullnameoffile_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Nwchemdata_fullnameoffile_by_nwchemdata_context_databox_tag_provider_v;;

let nam_nbo = "lanl2dz";;

let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

test_number 1 (
( tag_nbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

let (nam_nba, nam_nbo) =
    Databox_name_n_database_name_by_nwchemdata_context_databox_tag_provider_v.provide
      tag_nbo;;
  
test_number 2 (
(nam_nba : string ) =
"nwchem"
);;

let fno_nwc = Nwchemdata_fullnameoffile_by_databox_name_provider_v.provide (nam_nba, nam_nbo);;

test_number 3 (
( fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/lanl2dz.nwc"
);;
