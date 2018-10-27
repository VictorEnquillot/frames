open Make_test_v;;

testing "Localinput_as_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_inputbox_provider_v with
        Localinput_as_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_inputbox_provider_u_segment_BC.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_inputbox_provider_u_segment_BC.ml";; 

*)

open Localinput_as_body_record_vertex_symbol_subtree_by_vertex_name_n_basicname_inputbox_provider_v;;

let nam_ibo = "segment_BC";;
let nam_ver = "BC_B";;

let sym_loc_dcv_st = 
    Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

test_number 1 (
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

let sym_loc_dcv_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_dcv_st;;

test_number 2 (
(sym_loc_dcv_rtl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
        (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
          "BC")));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_record_symbol
      (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
        (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
          "BC_B")));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_record_symbol
      (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
        (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
          "BC_C")))]
);;

let sym_loc_drv_st = Tree_v.subtree_of_node_predicate_off_tree  
    (fun s ->
      (Localinput_symbol_v.is_localinput_body_record_vertex_constructor s)
	&&
      (Localinput_symbol_v.string_off s = nam_ver)
    )
    sym_loc_dcv_st;;

test_number 3 (
(sym_loc_drv_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
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
                 "0.")))))])])
);;

test_number 4 (
sym_loc_drv_st = provide (nam_ver, nam_ibo)
);;
