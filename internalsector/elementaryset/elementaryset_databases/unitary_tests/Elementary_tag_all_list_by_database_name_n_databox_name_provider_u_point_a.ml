open Make_test_v;;

testing "Elementary_tag_all_list_by_database_name_n_databox_name_provider_v with
   Elementary_tag_all_list_by_database_name_n_databox_name_provider_u_point_a.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Elementary_tag_all_list_by_database_name_n_databox_name_provider_u_point_a.ml";;

*)

let nam_dbo = "point_a";;
let nam_dba = "db1figure";;

(* Parameters_general_register_v.store "databox-name" nam_dbo;; *)
(* Parameters_general_register_v.store "database-name" nam_dba;; *)

let tag_db1_t = 
  Elementary_tag_tree_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(tag_ecr : Database_name_symbol_t.database_name_symbol Tag_t.tag ) =
  (Database_name_symbol_t.Elementary_context_database "db1figure",
   [5; 4])
);;

let tag_ele_t = Elementary_tag_tree_by_database_name_provider_v.provide tag_ecr;;

let tag_ele_tso_l = Tree_v.root_topson_node_list_off_tree tag_ele_t;;

test_number 2 (
(tag_ele_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
    [4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Database_name_symbol
       (Database_name_symbol_t.Elementary_context_database
         "db1figure")),
    [1; 4])]
);;

let tag_ele_l = Elementary_tag_all_list_by_database_name_provider_v.provide tag_ecr;;
 
let tag_ele_top_l = List.filter 
    (fun (s, i) -> 
      (List.length i <= 4) && (List.hd i <= 3)
    ) 
    tag_ele_l;;

test_number 3 (
(tag_ele_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) = 
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Database_name_symbol
       (Database_name_symbol_t.Elementary_context_database
         "db1figure")),
    [1; 4]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
         (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
           "point_a"))),
    [1; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "Ne S 1 GAUSSIAN 1"))),
    [1; 1; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "Ne S 1 GAUSSIAN 2"))),
    [2; 1; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "Ne S 1 GAUSSIAN 3"))),
    [3; 1; 1; 4])]
);;

let tag_ele_cre = Tag_v.map_entity Elementary_symbol_v.elementary_symbol_of_database_name_symbol tag_ecr;;

test_number 4 (
(tag_ele_cre : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Database_name_symbol
      (Database_name_symbol_t.Elementary_context_database "db1figure")),
   [5; 4])
);;

open Elementary_any_category_by_sole_index_extractor_v;;

let str_pre = "is_database_name_symbol_off_elementary_symbol";;
let des_pre = predicate_of_string str_pre;;

let e_l = Register_v.entry_list_of_value_predicate_of_register des_pre main_register;; 

test_number 5 (
( e_l :
  (Sole_index_t.sole_index * Elementary_symbol_t.elementary_symbol) list ) =
  [([1; 4],
    Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Database_name_symbol
       (Database_name_symbol_t.Elementary_context_database
         "db1figure")))]
);;
(*
let tag_ele_bui_l =
    Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
      tag_ele_cre;;
*)
