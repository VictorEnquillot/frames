open Make_test_v;;

testing "Db1pointsdata_as_set_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_databox_provider_v with
        Db1pointsdata_as_set_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_databox_provider_u_segment_bc.ml";;

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
   #use "Db1pointsdata_as_set_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_databox_provider_u_segment_bc.ml";; 

*)

open Db1pointsdata_as_set_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_databox_provider_v;;

let nam_dbo = "segment_BC";;
let nam_ver = "BC_B";;

let sym_db1_dcv_st = 
    Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v.provide 
      nam_dbo;;

test_number 1 (
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

let sym_db1_dcv_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_dcv_st;;

test_number 2 (
(sym_db1_dcv_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
        (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
          "BC")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
      (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
        (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
          "BC_B")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
      (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
        (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
          "BC_C")))]
);;

let sym_db1_drv_st = Tree_v.subtree_of_node_predicate_off_tree  
    (fun s ->
      (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor s)
	&&
      (Db1pointsdata_symbol_v.string_off s = nam_ver)
    )
    sym_db1_dcv_st;;

test_number 3 (
(sym_db1_drv_st : Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree ) =
  Tree_t.Inner
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
                 "0.")))))])])
);;

test_number 4 (
sym_db1_drv_st = provide (nam_ver, nam_dbo)
);;
