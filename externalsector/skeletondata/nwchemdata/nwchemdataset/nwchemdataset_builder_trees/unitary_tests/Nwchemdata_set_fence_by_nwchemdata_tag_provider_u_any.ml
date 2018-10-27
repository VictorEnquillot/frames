open Make_test_v;;

testing "Nwchemdata_set_fence_by_nwchemdata_tag_provider_v with
    Nwchemdata_set_fence_by_nwchemdata_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_set_fence_by_nwchemdata_tag_provider_u_any.ml";; 

*)

open Nwchemdata_set_fence_by_nwchemdata_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;
let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_nbo;;

let tag_nwc_sl = List.filter (fun (s, i) -> Nwchemdata_symbol_v.string_off s = "H P 5 GAUSSIAN") tag_nwc_l;;

test_number 1 (
(tag_nwc_sl : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "H P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_and_shell_name
         "H P 5 GAUSSIAN")),
    [1; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values_block
         "H P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2])]
);;

let tag_nwc = List.hd tag_nwc_sl;;

test_number 2 (
(tag_nwc : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
        "H P 5 GAUSSIAN")),
   [5; 2; 1; 2; 2; 2; 13; 5; 20; 2])
);;

let tag_nwc_st = Nwchemdata_tag_subtree_by_nwchemdata_tag_provider_v.provide tag_nwc;;

let fen_nwc = Tree_v.leaf_node_list_off_tree tag_nwc_st;;

test_number 3 (
( fen_nwc : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
       (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_center_name
         "H")),
    [1; 1; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
       (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shell_name
         "P")),
    [2; 1; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.3880000"),
    [1; 1; 2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2])]
);;

let tag_nwc_fen = List_v.last_element_off_list fen_nwc;;

test_number 4 (
(tag_nwc_fen : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
    (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
   [2; 1; 2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2])
);;

let tag_nwc_t = Nwchemdata_tag_tree_by_databox_name_provider_v.provide nam_nbo;;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_fen) tag_nwc_t);;

test_number 5 (
( tag_pat : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
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
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
         "cc_pVTZ")),
    [2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_block
         "cc_pVTZ")),
    [2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block
         "cc_pVTZ")),
    [2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block
         "H")),
    [1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block
         "H")),
    [2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "H P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values_block
         "H P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "H P 5 GAUSSIAN 1")),
    [1; 2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 13; 5; 20; 2])]
);;
