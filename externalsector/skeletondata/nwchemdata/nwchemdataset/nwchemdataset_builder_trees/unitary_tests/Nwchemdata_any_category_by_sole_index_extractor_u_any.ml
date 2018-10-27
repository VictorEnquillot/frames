open Make_test_v;;

testing "Nwchemdata_any_category_by_sole_index_extractor_v with
    Nwchemdata_any_category_by_sole_index_extractor_u_any.ml";;

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
   #use "Nwchemdata_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Nwchemdata_any_category_by_sole_index_extractor_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nwc_l = 
    Nwchemdata_tag_all_list_by_databox_name_provider_v.provide
    nam_nbo;;

let tag_nwc_any = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> s =
      (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
	 (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "33.8700000")
      )
    )
    tag_nwc_l;;

test_number 1 (
(tag_nwc_any : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
    (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "33.8700000"),
   [1; 1; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2])
);;

let soi_any = Tag_v.sole_index_off_tag tag_nwc_any;;

let nam_nwf = nwchemdata_set_fence_name_off_sole_index soi_any;;

test_number 2 (
(nam_nwf : string ) = 
"nwchemdata_set_fence_float_positive"
);;

let nam_nbo = nwchemdata_context_databox_string_off_off_sole_index soi_any;;

test_number 3 (
(nam_nbo : string ) = 
"cc_pVTZ"
);;

let nam_nba = nwchemdata_context_database_string_off_off_sole_index soi_any;;

test_number 4 (
(nam_nba : string ) = 
"nwchem"
);;

let nam_ncd = nwchemdata_context_domain_string_off_off_sole_index soi_any;;

test_number 5 (
(nam_ncd : string ) = 
"skeleton"
);;

let nam_ncs = nwchemdata_context_sector_string_off_off_sole_index soi_any;;

test_number 6 (
(nam_ncs : string ) = 
"external"
);;
