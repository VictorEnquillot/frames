open Make_test_v;;

testing "Db1pointsdata_as_set_body_bundle_figure_symbol_subtree_by_basicname_databox_provider_v with
    Db1pointsdata_as_set_body_bundle_figure_symbol_subtree_by_basicname_databox_provider_u_any.ml";;

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
   #use "Db1pointsdata_as_set_body_bundle_figure_symbol_subtree_by_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_as_set_body_bundle_figure_symbol_subtree_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;

let sym_db1_st = 
  Db1pointsdata_parser_v.db1pointsdata_symbol_tree_root_databox_of_basicname_databox 
    nam_dbo;;

let sym_db1_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 1 (
(sym_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "Point_a"));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "A")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
        (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
          "A")))]
);;

let sym_db1_dbf_st = Tree_v.subtree_of_node_predicate_off_tree 
    Db1pointsdata_symbol_v.is_db1pointsdata_set_body_bundle_figure_symbol_off_db1pointsdata_symbol 
    sym_db1_st;;


test_number 2 (
(sym_db1_dbf_st :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
       (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
         (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
           "A"))),
   [Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
       (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
         (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_figure_symbol
           (Db1pointsdata_fence_cell_figure_symbol_t.Db1pointsdata_fence_cell_figure_kind_symbol
             (Db1pointsdata_fence_cell_figure_kind_symbol_t.Db1pointsdata_fence_cell_figure_kind_constructor
               "A")))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
         (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
           (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_figure_symbol
             (Db1pointsdata_fence_token_figure_symbol_t.Db1pointsdata_fence_token_figure_kind_symbol
               (Db1pointsdata_fence_token_figure_kind_symbol_t.Db1pointsdata_fence_token_figure_kind_point_symbol
                 (Db1pointsdata_fence_token_figure_kind_point_symbol_t.Db1pointsdata_fence_token_figure_kind_point_constructor
                   "A"))))))]);
    Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
       (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
         (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_figure_symbol
           (Db1pointsdata_fence_cell_figure_symbol_t.Db1pointsdata_fence_cell_figure_name_symbol
             (Db1pointsdata_fence_cell_figure_name_symbol_t.Db1pointsdata_fence_cell_figure_name_constructor
               "A")))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
         (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
           (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_word_symbol
             (Db1pointsdata_fence_basic_word_symbol_t.Db1pointsdata_fence_basic_word_uppercase_symbol
               (Db1pointsdata_fence_basic_word_uppercase_symbol_t.Db1pointsdata_fence_basic_word_uppercase_constructor
                 "A")))))])])
);;

test_number 3 (
sym_db1_dbf_st = provide nam_dbo
);;
