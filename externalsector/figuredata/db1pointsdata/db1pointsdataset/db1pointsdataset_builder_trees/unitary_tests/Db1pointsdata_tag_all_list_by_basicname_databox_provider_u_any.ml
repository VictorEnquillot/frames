open Make_test_v;;

testing "Db1pointsdata_tag_all_list_by_basicname_databox_provider_v with
    Db1pointsdata_tag_all_list_by_basicname_databox_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_tag_all_list_by_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_tag_all_list_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;
 
let tag_db1_t = 
    Db1pointsdata_tag_tree_by_basicname_databox_provider_v.provide
    nam_dbo;;

let tag_db1_l = Tree_v.node_list_off_tree tag_db1_t;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_db1_l;;

test_number 1 (
( tag_top_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
[(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
         (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
           "A"))),
    [1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
         (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
           "A"))),
    [2; 5; 1; 7; 2])]
);;

let tag_db1_f11_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 4) 
	(* && (List.nth i 5 = 1) *)
	(* && (List.nth i 3 = 1)  *)
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_symbol_off_db1pointsdata_symbol s)
    )
    tag_db1_l;;

test_number 2 (
(tag_db1_f11_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "1.")))),
    [1; 3; 1; 2; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))),
    [2; 3; 1; 2; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))),
    [3; 3; 1; 2; 5; 1; 7; 2])]
);;

test_number 3 (
tag_db1_l = provide nam_dbo
);;
