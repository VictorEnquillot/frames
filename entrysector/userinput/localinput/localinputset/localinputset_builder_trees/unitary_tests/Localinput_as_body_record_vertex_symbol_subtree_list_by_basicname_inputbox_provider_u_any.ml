open Make_test_v;;

testing "Localinput_as_body_record_vertex_symbol_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_record_vertex_symbol_subtree_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_record_vertex_symbol_subtree_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_as_body_record_vertex_symbol_subtree_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;

let sym_loc_dcv_st = 
    Localinput_as_body_cluster_vertex_symbol_subtree_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 (
(sym_loc_dcv_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_cluster_symbol
       (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
         (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
           "A"))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_body_symbol
       (Localinput_body_symbol_t.Localinput_body_record_symbol
         (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
           (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
             "A_A"))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
           (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_vertex_symbol
             (Localinput_fence_keyword_vertex_symbol_t.Localinput_fence_keyword_vertex_constructor
               "A_A"))));
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_name_symbol
           (Localinput_body_name_symbol_t.Localinput_body_name_vertex_symbol
             (Localinput_body_name_vertex_symbol_t.Localinput_body_name_vertex_constructor
               "A_A"))));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_body_symbol
         (Localinput_body_symbol_t.Localinput_body_sequence_symbol
           (Localinput_body_sequence_symbol_t.Localinput_body_sequence_float_symbol
             (Localinput_body_sequence_float_symbol_t.Localinput_body_sequence_float_constructor
               "A_A"))),
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
                   "0.785398163397448279")))));
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_fence_symbol
           (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
             (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
               (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                 (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                   "0.785398163397448279")))))])])])
);;

let sym_loc_drv_stl = Tree_v.subtree_list_of_node_predicate_off_tree 
    Localinput_symbol_v.is_localinput_body_record_vertex_symbol_off_localinput_symbol 
    sym_loc_dcv_st;;


test_number 2 (
(sym_loc_drv_stl :
  Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Localinput_symbol_t.Localinput_body_symbol
      (Localinput_body_symbol_t.Localinput_body_record_symbol
        (Localinput_body_record_symbol_t.Localinput_body_record_vertex_symbol
          (Localinput_body_record_vertex_symbol_t.Localinput_body_record_vertex_constructor
            "A_A"))),
    [Tree_t.Leaf
      (Localinput_symbol_t.Localinput_fence_symbol
        (Localinput_fence_symbol_t.Localinput_fence_keyword_symbol
          (Localinput_fence_keyword_symbol_t.Localinput_fence_keyword_vertex_symbol
            (Localinput_fence_keyword_vertex_symbol_t.Localinput_fence_keyword_vertex_constructor
              "A_A"))));
     Tree_t.Leaf
      (Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_name_symbol
          (Localinput_body_name_symbol_t.Localinput_body_name_vertex_symbol
            (Localinput_body_name_vertex_symbol_t.Localinput_body_name_vertex_constructor
              "A_A"))));
     Tree_t.Inner
      (Localinput_symbol_t.Localinput_body_symbol
        (Localinput_body_symbol_t.Localinput_body_sequence_symbol
          (Localinput_body_sequence_symbol_t.Localinput_body_sequence_float_symbol
            (Localinput_body_sequence_float_symbol_t.Localinput_body_sequence_float_constructor
              "A_A"))),
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
                  "0.785398163397448279")))));
       Tree_t.Leaf
        (Localinput_symbol_t.Localinput_fence_symbol
          (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
            (Localinput_fence_basic_symbol_t.Localinput_fence_basic_numerical_symbol
              (Localinput_fence_basic_numerical_symbol_t.Localinput_fence_basic_numerical_float_symbol
                (Localinput_fence_basic_numerical_float_symbol_t.Localinput_fence_basic_numerical_float_constructor
                  "0.785398163397448279")))))])])]
);;

test_number 3 (
sym_loc_drv_stl = provide nam_ibo
);;
