open Make_test_v;;

testing "Elementary_as_context_domain_tag_by_unit_provider_v with
    Elementary_as_context_domain_tag_by_unit_provider_u_any.ml";;

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
   #use "Elementary_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Elementary_as_context_domain_tag_by_unit_provider_v;;

let fnd_cur = Unix.getcwd ();;

test_number 1 (
(fnd_cur : string ) =
  "/keep/sources/ocaml_top/setup/frames/internalsector/elementaryset/elementaryset_builder_trees/unitary_tests"
);;

let (nam_dom, nam_sec) = 
  Domain_name_n_sector_name_by_fullnameofdirectory_provider_v.provide fnd_cur;;

test_number 2 (
( nam_dom : string ) = 
"elementary"
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

let sym_ele_ecd = 
    Elementary_symbol_v.elementary_context_domain_constructor 
    nam_dom ;;

test_number 5 (
( sym_ele_ecd : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_domain_symbol
     (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
       "elementary"))
);;

let tag_ele_ecd  = Tag_v.make sym_ele_ecd soi_dom;;

test_number 6 (
( tag_ele_ecd :
 Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
        "elementary")),
   [6; 5])
);;

test_number 7 (
tag_ele_ecd = provide ()
);;
