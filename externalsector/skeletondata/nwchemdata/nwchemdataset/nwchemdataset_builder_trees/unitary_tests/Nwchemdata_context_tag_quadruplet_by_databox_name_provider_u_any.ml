open Make_test_v;;

testing "Nwchemdata_context_tag_quadruplet_by_databox_name_provider_v with
    Nwchemdata_context_tag_quadruplet_by_databox_name_provider_u_any.ml";;

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
   #use "Nwchemdata_context_tag_quadruplet_by_databox_name_provider_u_any.ml";; 

*)

open Nwchemdata_context_tag_quadruplet_by_databox_name_provider_v;;

let nam_nbo = "cc_pVTZ";;
    
  let tag_ncs = Nwchemdata_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ncd = Nwchemdata_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_nba = Nwchemdata_context_database_tag_by_unit_provider_v.provide ();;
  let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

let tag_qua = Quadruplet_v.make tag_nbo tag_nba tag_ncd tag_ncs;;
  
let nam_qua = Quadruplet_v.map 
    Nwchemdata_context_databox_tag_v.string_off 
    Nwchemdata_context_database_tag_v.string_off 
    Nwchemdata_context_domain_tag_v.string_off 
    Nwchemdata_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 1 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("cc_pVTZ", "nwchem", "skeleton", "external")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;;


test_number 2 (
(tag_qua :
  (Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
   Tag_t.tag,
   Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol
   Tag_t.tag,
   Nwchemdata_context_domain_symbol_t.nwchemdata_context_domain_symbol
   Tag_t.tag,
   Nwchemdata_context_sector_symbol_t.nwchemdata_context_sector_symbol
   Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
     "cc_pVTZ",
    [13; 5; 20; 2]),
   (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
     "nwchem",
    [5; 20; 2]),
   (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
     "skeleton",
    [20; 2]),
   (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
     "external",
    [2]))
);;

test_number 3 (
tag_qua = provide nam_nbo
);;
