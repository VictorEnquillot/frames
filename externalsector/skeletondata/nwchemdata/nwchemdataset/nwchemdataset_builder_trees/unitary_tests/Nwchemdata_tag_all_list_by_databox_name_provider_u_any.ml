open Make_test_v;;

testing "Nwchemdata_tag_all_list_by_databox_name_provider_v with
    Nwchemdata_tag_all_list_by_databox_name_provider_u_any.ml";;

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
   #use "Nwchemdata_tag_all_list_by_databox_name_provider_u_any.ml";; 

*)

open Nwchemdata_tag_all_list_by_databox_name_provider_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nwc_t = 
    Nwchemdata_tag_tree_by_databox_name_provider_v.provide
    nam_nbo;;

let tag_nwc_l = Tree_v.node_list_off_tree tag_nwc_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_nwc_l;;

test_number 1 (
( tag_top_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
       (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
         "v1.2.2")),
    [1; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
         "cc_pVTZ")),
    [2; 13; 5; 20; 2])]
);;

let tag_nwc_f11_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 1) 
	&& (Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 2 (
(tag_nwc_f11_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "33.8700000"),
    [1; 1; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.0060680"),
    [2; 1; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "5.0950000"),
    [1; 2; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.0453080"),
    [2; 2; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.1590000"),
    [1; 3; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.2028220"),
    [2; 3; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2])]
);;

let tag_nwc_f13_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 3) 
	&& (Nwchemdata_symbol_v.is_nwchemdata_set_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 3 (
(tag_nwc_f13_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.1027000"),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 13; 5; 20; 2])]
);;

test_number 4 (
tag_nwc_l = provide nam_nbo
);;
