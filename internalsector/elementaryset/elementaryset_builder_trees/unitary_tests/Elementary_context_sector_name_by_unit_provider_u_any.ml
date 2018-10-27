open Make_test_v;;

testing "Elementary_context_sector_name_by_unit_provider_v with
    Elementary_context_sector_name_by_unit_provider_u_any.ml";;

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
   #use "Elementary_context_sector_name_by_unit_provider_u_any.ml";; 

*)

open Elementary_context_sector_name_by_unit_provider_v;;
  
let fnd_cur = Unix.getenv ("BELE");;

test_number 1 (
(fnd_cur : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/internalsector/elementaryset/elementaryset_builder_trees"
);;

let (_, nam_sec) =
    Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide
      fnd_cur;;

test_number 2 (
(nam_sec : string ) =
"internal"
);;

test_number 3 (
nam_sec = provide ()
);;
