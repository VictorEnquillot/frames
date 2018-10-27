open Make_test_v;;

testing "Parameter_symbol_subtree_by_databox_name_n_database_name_provider_v with
    Parameter_symbol_subtree_by_databox_name_n_database_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Parameter_symbol_subtree_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_symbol_subtree_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let sym_nwc_st = 
  Parameter_symbol_subtree_by_nwchemdata_context_databox_name_provider_v.provide nam_dbo;;

let tag_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 1 (
(tag_nwc_rtl : Parameter_symbol_t.parameter_symbol list ) =
  [Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "try_ao"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 3 1"))))]
);;

test_number 2 (
sym_nwc_st = provide (nam_dbo, nam_dba)
);;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let sym_nwc_st = 
  Parameter_symbol_subtree_by_nwchemdata_context_databox_name_provider_v.provide nam_dbo;;

let tag_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
(tag_nwc_rtl : Parameter_symbol_t.parameter_symbol list ) =
  [Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "try_ao"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 3 1"))))]
);;

test_number 4 (
sym_nwc_st = provide (nam_dbo, nam_dba)
);;
