open Make_test_v;;

testing "Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_v with
    Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_u_segment_bc.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_u_segment_bc.ml";; 

*)

open Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "segment_BC";;

let sym_loc_st = 
  Localinput_parser_v.localinput_symbol_tree_root_inputbox_of_inputbox_name 
    nam_ibo;;

let sym_loc_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_st;;

test_number 1 (
(sym_loc_rtl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "segment_BC"));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_information_symbol
        (Localinput_body_cluster_information_symbol_t.Localinput_body_cluster_information_constructor
          "BC")));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
        (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
          "BC")))]
);;

let sym_loc_dcv_st = Tree_v.subtree_of_node_predicate_off_tree 
    Localinput_symbol_v.is_localinput_body_cluster_vertex_symbol_off_localinput_symbol 
    sym_loc_st;;


test_number 2 (
(sym_loc_dcv_st :
  Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_cluster_symbol
       (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
         (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
           "BC"))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_record_symbol
         (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
           (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
             "BC_B"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_vertex_symbol
             (Localinput_fence_keyword_vertex_symbol_t.Localinput_fence_keyword_vertex_constructor
               "BC_B"))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_name_symbol
           (Localinput_body_name_symbol_t.Localinput_body_name_vertex_symbol
             (Localinput_body_name_vertex_symbol_t.Localinput_body_name_vertex_constructor
               "BC_B"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_sequence_symbol
           (Localinput_body_sequence_symbol_t.Localinput_body_sequence_float_symbol
             (Localinput_body_sequence_float_symbol_t.Localinput_body_sequence_float_constructor
               "BC_B"))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "1.")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "0.")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "0.")))))])]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_record_symbol
         (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
           (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
             "BC_C"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_vertex_symbol
             (Localinput_fence_keyword_vertex_symbol_t.Localinput_fence_keyword_vertex_constructor
               "BC_C"))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_name_symbol
           (Localinput_body_name_symbol_t.Localinput_body_name_vertex_symbol
             (Localinput_body_name_vertex_symbol_t.Localinput_body_name_vertex_constructor
               "BC_C"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_sequence_symbol
           (Localinput_body_sequence_symbol_t.Localinput_body_sequence_float_symbol
             (Localinput_body_sequence_float_symbol_t.Localinput_body_sequence_float_constructor
               "BC_C"))),
       [Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "1.")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "90.")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "1.")))))])])])
);;

test_number 3 (
sym_loc_dcv_st = provide nam_ibo
);;
