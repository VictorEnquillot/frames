open Make_test_v;;

testing "Localinput_as_body_bundle_figure_symbol_subtree_by_basicname_inputbox_provider_v with
    Localinput_as_body_bundle_figure_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_bundle_figure_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_as_body_bundle_figure_symbol_subtree_by_basicname_inputbox_provider_v;;

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

let sym_loc_dbf_st = Tree_v.subtree_of_node_predicate_off_tree 
    Localinput_symbol_v.is_localinput_body_bundle_figure_symbol_off_localinput_symbol 
    sym_loc_st;;


test_number 2 (
(sym_loc_dbf_st :
  Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_bundle_symbol
       (Localinput_body_bundle_symbol_t.Localinput_body_bundle_figure_symbol
         (Localinput_body_bundle_figure_symbol_t.Localinput_body_bundle_figure_constructor
           "A"))),
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_figure_symbol
           (Localinput_fence_cell_figure_symbol_t.Localinput_fence_cell_figure_kind_symbol
             (Localinput_fence_cell_figure_kind_symbol_t.Localinput_fence_cell_figure_kind_constructor
               "A")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_token_symbol
           (Localinput_fence_token_symbol_t.Localinput_fence_token_figure_symbol
             (Localinput_fence_token_figure_symbol_t.Localinput_fence_token_figure_kind_symbol
               (Localinput_fence_token_figure_kind_symbol_t.Localinput_fence_token_figure_kind_point_symbol
                 (Localinput_fence_token_figure_kind_point_symbol_t.Localinput_fence_token_figure_kind_point_constructor
                   "A"))))))]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_fence_symbol
       (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
         (Localinput_fence_cell_symbol_t.Localinput_fence_cell_figure_symbol
           (Localinput_fence_cell_figure_symbol_t.Localinput_fence_cell_figure_name_symbol
             (Localinput_fence_cell_figure_name_symbol_t.Localinput_fence_cell_figure_name_constructor
               "A")))),
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_fence_symbol
         (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
           (Localinput_fence_basic_symbol_t.Localinput_fence_basic_word_symbol
             (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_uppercase_symbol
               (Localinput_fence_basic_word_uppercase_symbol_t.Localinput_fence_basic_word_uppercase_constructor
                 "A")))))])])
);;

test_number 3 (
sym_loc_dbf_st = provide nam_ibo
);;
