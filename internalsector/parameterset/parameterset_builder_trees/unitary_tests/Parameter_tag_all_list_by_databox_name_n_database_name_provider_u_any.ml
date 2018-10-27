open Make_test_v;;

testing "Parameter_tag_all_list_by_databox_name_n_database_name_provider_v with
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Parameter_tag_all_list_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_tag_all_list_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;
 
let tag_par_t = 
    Parameter_tag_tree_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_par_l = Tree_v.node_list_off_tree tag_par_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_par_l;;

test_number 1 (
( tag_top_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
 [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [6; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 6; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he s 1 1")))),
    [1; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he s 1 2")))),
    [2; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he s 2 1")))),
    [3; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he p 2 1")))),
    [4; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he p 2 2")))),
    [5; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he p 3 1")))),
    [6; 22; 5; 16; 5])]
);;

test_number 2 (
tag_par_l = provide (nam_dbo, nam_dba)
);;
