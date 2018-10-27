open Make_test_v;;

testing "Db1pointsdata_context_domain_tag_by_unit_provider_v with
        Db1pointsdata_context_domain_tag_by_unit_provider_u_any.ml";;

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
   #use "Db1pointsdata_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Db1pointsdata_context_domain_tag_by_unit_provider_v;;

let (_, nam_dom, nam_sec) = 
  Db1pointsdata_context_name_trio_by_unit_provider_v.provide ();;

  let soi_dom = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
      (nam_dom, nam_sec) ;;

  let sym_dcd = 
    Db1pointsdata_context_domain_symbol_v.db1pointsdata_context_domain_constructor 
      nam_dom ;;

let tag_dcd  = Tag_v.make sym_dcd soi_dom;;

test_number 1 (
( tag_dcd :
  Db1pointsdata_context_domain_symbol_t.db1pointsdata_context_domain_symbol
  Tag_t.tag ) =
  (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
    "figure",
   [7; 2])
);;

test_number 2 (
tag_dcd = provide ()
);;
