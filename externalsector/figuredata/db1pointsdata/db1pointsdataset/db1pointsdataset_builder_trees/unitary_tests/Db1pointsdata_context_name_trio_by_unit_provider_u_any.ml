open Make_test_v;;

testing "Db1pointsdata_context_name_trio_by_unit_provider_v with
    Db1pointsdata_context_name_trio_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_context_name_trio_by_unit_provider_u_any.ml";; 

*)

open Db1pointsdata_context_name_trio_by_unit_provider_v;;

let env_var = "BDB1";;
let fnd_cur = Sys.getenv (env_var);;

test_number 1 (
(fnd_cur : string ) =
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdataset/db1pointsdataset_builder_trees"
);;

let nam_con_t = Context_name_trio_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
(nam_con_t : (string, string, string) Triplet_t.triplet ) =
  ("db1points", "figure", "external")
);;

test_number 3 (
nam_con_t = provide ()
);;
