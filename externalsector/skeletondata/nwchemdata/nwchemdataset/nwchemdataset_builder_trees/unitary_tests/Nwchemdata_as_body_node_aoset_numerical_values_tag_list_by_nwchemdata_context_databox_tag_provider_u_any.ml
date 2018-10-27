open Make_test_v;;

testing "Nwchemdata_as_body_node_aoset_numerical_values_tag_list_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_as_body_node_aoset_numerical_values_tag_list_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_as_body_node_aoset_numerical_values_tag_list_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Nwchemdata_as_body_node_aoset_numerical_values_tag_list_by_nwchemdata_context_databox_tag_provider_v;;

let nam_dbo = "try_ao";;

let tag_ncb = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
(tag_ncb :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "try_ao",
   [22; 5; 20; 2])
);;

let tag_nwc_l = 
  Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.provide 
    tag_ncb ;;

let tag_nwc_nnv_l =  List.filter 
      (fun (s, i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numerical_values s)
      tag_nwc_l
;;

test_number 2 (
( tag_nwc_nnv_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 2 GAUSSIAN 1")),
    [1; 2; 2; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 1")),
    [1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 2")),
    [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

test_number 3 (
tag_nwc_nnv_l = provide tag_ncb
);;
