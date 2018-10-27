open Make_test_v;;

testing "Nwchemdata_as_context_tag_quatuor_by_databox_name_provider_v with
    Nwchemdata_as_context_tag_quatuor_by_databox_name_provider_u_any.ml";;

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
   #use "Nwchemdata_as_context_tag_quatuor_by_databox_name_provider_u_any.ml";; 

*)

open Nwchemdata_as_context_tag_quatuor_by_databox_name_provider_v;;

let nam_nbo = "cc_pVTZ";;
    
let tag_nwc_ncs = Nwchemdata_as_context_sector_tag_by_unit_provider_v.provide ();;

let tag_nwc_ncd = Nwchemdata_as_context_domain_tag_by_unit_provider_v.provide ();;
  
let tag_nwc_nba = Nwchemdata_as_context_database_tag_by_unit_provider_v.provide ();;
  
let tag_nwc_nbo = Nwchemdata_as_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;
  
let tag_nwc_qua = Quatuor_v.make tag_nwc_nbo tag_nwc_nba tag_nwc_ncd tag_nwc_ncs;;

test_number 1 (
(tag_nwc_qua :
  Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]))
);;

let nam_qua = Quatuor_v.map 
      Nwchemdata_tag_v.string_off 
      tag_nwc_qua;;
Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;

test_number 2 (
tag_nwc_qua = provide nam_nbo
);;
