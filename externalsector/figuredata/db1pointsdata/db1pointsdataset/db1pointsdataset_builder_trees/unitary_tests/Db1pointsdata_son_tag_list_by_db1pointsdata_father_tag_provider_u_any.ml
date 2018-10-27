open Make_test_v;;

testing "Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v with
    Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_u_any.ml";;

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
   #use "Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v;;

let nam_dbo = "Point_a";;

let soi_any = [2; 3; 1; 2; 5; 1; 7; 2];;

let tag_dbo = Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index soi_any;;
let tag_db1 = Db1pointsdata_context_databox_tag_v.db1pointsdata_tag_of_db1pointsdata_context_databox_tag tag_dbo;;

test_number 1 (
(tag_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "Point_a")),
   [5; 1; 7; 2])
);;

let soi_db1 = Tag_v.sole_index_off_tag tag_db1;;

test_number 2 (
(soi_db1 : Sole_index_t.sole_index ) = 
[5; 1; 7; 2]
);;

let tag_dbo = 
    Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index
      soi_db1;;

test_number 3 (
( tag_dbo :
  Db1pointsdata_context_databox_symbol_t.db1pointsdata_context_databox_symbol
  Tag_t.tag  ) =
  (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
    "Point_a",
   [5; 1; 7; 2])
);;

let tag_db1_t = 
    Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide  
      tag_dbo;;

let boo = Tree_v.is_leaf_of_node_off_tree tag_db1 tag_db1_t;;

test_number 4 (
boo = false
);;

let tag_db1_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_db1) 
	  tag_db1_t;;

let tag_db1_tsn_l = Tree_v.topson_node_list_off_tree tag_db1_st;;

test_number 5 (
(tag_db1_tsn_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
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

test_number 6 (
tag_db1_tsn_l = provide tag_db1
);;
