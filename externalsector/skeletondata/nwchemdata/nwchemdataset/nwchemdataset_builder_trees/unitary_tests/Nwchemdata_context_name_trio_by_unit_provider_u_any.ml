open Make_test_v;;

testing "Nwchemdata_context_name_trio_by_unit_provider_v with
    Nwchemdata_context_name_trio_by_unit_provider_u_any.ml";;

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
   #use "Nwchemdata_context_name_trio_by_unit_provider_u_any.ml";; 

*)

open Nwchemdata_context_name_trio_by_unit_provider_v;;


let env_var = "NWCS";;
let fnd_cur = Sys.getenv (env_var);;

test_number 1 (
(fnd_cur : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdataset"
);;

let nam_con_t = provide ();;

test_number 2 (
(nam_con_t : (string, string, string) Triplet_t.triplet ) =
  ("nwchem", "skeleton", "external")
);;

