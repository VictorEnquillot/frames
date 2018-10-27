open Make_test_v;;

testing "Nwchemdata_as_context_domain_tag_by_unit_provider_v with
    Nwchemdata_context_domain_tag_by_unit_provider_u_any.ml";;

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
   #use "Nwchemdata_as_context_domain_tag_by_unit_provider_u_any.ml";; 

*)

open Nwchemdata_as_context_domain_tag_by_unit_provider_v;;
  
let (_, nam_dom, nam_sec) = 
  Nwchemdata_context_name_trio_by_unit_provider_v.provide ();;

test_number 1 (
( nam_dom : string ) = 
"skeleton"
);;

test_number 2 (
(nam_sec : string ) = 
"external"
);;

let soi_dom = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide 
      (nam_dom, nam_sec) ;;
  
test_number 3 (
(soi_dom : int list ) = 
[20; 2]
);;

let sym_nwc_ncd = 
  Nwchemdata_symbol_v.nwchemdata_context_domain_constructor 
    nam_dom 
;;

test_number 4 (
(sym_nwc_ncd : Nwchemdata_symbol_t.nwchemdata_symbol ) =
  Nwchemdata_symbol_t.Nwchemdata_context_symbol
   (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
     (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
       "skeleton"))
);;
 
let tag_nwc_ncd = Tag_v.make sym_nwc_ncd soi_dom;;

test_number 5 (
(tag_nwc_ncd : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
      (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
        "skeleton")),
   [20; 2])
);;

test_number 6 (
tag_nwc_ncd = provide ()
);;
