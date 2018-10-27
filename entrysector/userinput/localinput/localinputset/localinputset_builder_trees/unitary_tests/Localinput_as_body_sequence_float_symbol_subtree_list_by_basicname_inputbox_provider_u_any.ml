open Make_test_v;;

testing "Localinput_as_body_sequence_float_symbol_subtree_list_by_basicname_inputbox_provider_v with
    Localinput_as_body_sequence_float_symbol_subtree_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_sequence_float_symbol_subtree_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_as_body_sequence_float_symbol_subtree_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;

let sym_loc_st = 
  Localinput_parser_v.localinput_symbol_tree_root_inputbox_of_basicname_inputbox 
    nam_ibo;;

let sym_loc_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_st;;

test_number 1 (
(sym_loc_rtl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Point_a_print"));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_information_symbol
        (Localinput_body_cluster_information_symbol_t.Localinput_body_cluster_information_constructor
          "A")));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
        (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
          "A")))]
);;

let sym_loc_dsf_stl = Tree_v.subtree_list_of_node_predicate_off_tree 
    Localinput_symbol_v.is_localinput_body_sequence_float_symbol_off_localinput_symbol 
    sym_loc_st;;


test_number 2 (
(sym_loc_dsf_stl :
  Localinput_symbol_t.localinput_symbol Tree_t.tree list ) =
  [Tree_t.Inner
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
                "0.785398163397448279")))))])]
);;

test_number 3 (
sym_loc_dsf_stl = provide nam_ibo
);;
