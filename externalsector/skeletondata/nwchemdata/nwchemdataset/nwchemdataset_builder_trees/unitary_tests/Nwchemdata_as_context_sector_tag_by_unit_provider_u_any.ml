open Make_test_v;;

testing "Nwchemdata_as_context_sector_tag_by_unit_provider_v with
    Nwchemdata_context_sector_tag_by_unit_provider_u_any.ml";;

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
   #use "Nwchemdata_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Nwchemdata_as_context_sector_tag_by_unit_provider_v;;
  
let nam_sec = Nwchemdata_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string) =
"external" 
);;

let soi_sec = 
  Context_sole_index_by_sector_name_provider_v.provide 
    nam_sec 
;;
  
test_number 2 (
(soi_sec : int list ) = 
[2]
);;

let sym_nwc_ncs = 
  Nwchemdata_symbol_v.nwchemdata_context_sector_constructor 
    nam_sec 
;;

test_number 3 (
(sym_nwc_ncs : Nwchemdata_symbol_t.nwchemdata_symbol ) =
  Nwchemdata_symbol_t.Nwchemdata_context_symbol
   (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
     (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
       "external"))
);;
 
let tag_nwc_ncs = Tag_v.make sym_nwc_ncs soi_sec;;

test_number 4 (
(tag_nwc_ncs : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
      (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
        "external")),
   [2])
);;

test_number 5 (
tag_nwc_ncs = provide ()
);;
