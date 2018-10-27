open Make_test_v;;

testing "Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v with
    Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_u_segment_bc.ml";;

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
   #use "Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_u_segment_bc.ml";; 

*)

open Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v;;

let nam_dbo = "segment_BC";;

let sym_db1_st = 
  Db1pointsdata_parser_v.db1pointsdata_symbol_tree_root_databox_of_basicname_databox 
    nam_dbo;;

let sym_db1_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 1 (
(sym_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "segment_BC"));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "BC")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
        (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
          "BC")))]
);;

let sym_db1_dcv_st = Tree_v.subtree_of_node_predicate_off_tree 
    Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_symbol_off_db1pointsdata_symbol 
    sym_db1_st;;


test_number 2 (
(sym_db1_dcv_st :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
         (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
           "BC"))),
   [Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
         (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
           (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
             "BC_B"))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
         (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_keyword_symbol
           (Db1pointsdata_fence_keyword_symbol_t.Db1pointsdata_fence_keyword_vertex_symbol
             (Db1pointsdata_fence_keyword_vertex_symbol_t.Db1pointsdata_fence_keyword_vertex_constructor
               "BC_B"))));
      Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
           (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
             (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
               "BC_B"))));
      Tree_t.Inner
       (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
           (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
             (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
               "BC_B"))),
       [Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "1.")))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "0.")))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "0.")))))])]);
    Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
         (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
           (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
             "BC_C"))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
         (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_keyword_symbol
           (Db1pointsdata_fence_keyword_symbol_t.Db1pointsdata_fence_keyword_vertex_symbol
             (Db1pointsdata_fence_keyword_vertex_symbol_t.Db1pointsdata_fence_keyword_vertex_constructor
               "BC_C"))));
      Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
           (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
             (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
               "BC_C"))));
      Tree_t.Inner
       (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
           (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
             (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
               "BC_C"))),
       [Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "1.")))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "90.")))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
           (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
             (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
               (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
                 (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
                   "1.")))))])])])
);;

test_number 3 (
sym_db1_dcv_st = provide nam_dbo
);;
