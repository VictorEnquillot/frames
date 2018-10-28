open Make_test_v;;

testing "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (bna_dbo, bna_dba) *)

open Figure_tag_tree_by_basicname_databox_n_basicname_database_provider_v;; 


let (tag_fig_dom, tag_fig_fba, tag_fig_fbo) =
  Figure_as_context_tag_trio_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;


test_number 1 (
(tag_fig_dom : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_domain_symbol
      (Figure_context_domain_symbol_t.Figure_context_domain_constructor
        "figure")),
   [8])
);;

test_number 2 (
(tag_fig_fba : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_database_symbol
      (Figure_context_database_symbol_t.Figure_context_database_constructor
        "db1points")),
   [1; 8])
);;

test_number 3 (
(tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
        "cc_pvtz")),
   [3; 1; 8])
);;

let sym_fig_fbo_st =
    Figure_symbol_subtree_root_databox_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

test_number 4 (
( sym_fig_fbo_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "cc_pvtz")),
   [Tree_t.Inner
       (Figure_symbol_t.Figure_set_body_symbol
         (Figure_set_body_symbol_t.Figure_set_body_cc_pvtzymbol
           (Figure_set_body_cc_pvtzymbol_t.Figure_set_body_segment_constructor "S"))),
     [Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "S_B"))));
      Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "S_C"))))])])

);;
  
let soi_fig_fbo = Tag_v.sole_index_off_tag tag_fig_fbo;;

test_number 5 (
(soi_fig_fbo : Sole_index_t.sole_index ) = 
[3; 1; 8]
);;

let soi_fig_fbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_fig_fbo_st 
      soi_fig_fbo;;

test_number 6 (
(soi_fig_fbo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([3; 1; 8],
   [Tree_t.Inner ([1; 3; 1; 8],
     [Tree_t.Leaf [1; 1; 3; 1; 8]; 
      Tree_t.Leaf [2; 1; 3; 1; 8]])])
);;

let tag_fig_fbo_st = Tree_v.map2 Tag_v.make sym_fig_fbo_st soi_fig_fbo_st;;
  
test_number 7 (
( tag_fig_fbo_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_databox_symbol
        (Figure_context_databox_symbol_t.Figure_context_databox_constructor
          "cc_pvtz")),
     [3; 1; 8]),
   [Tree_t.Inner
        (Figure_symbol_t.Figure_set_body_symbol
          (Figure_set_body_symbol_t.Figure_set_body_cc_pvtzymbol
            (Figure_set_body_cc_pvtzymbol_t.Figure_set_body_segment_constructor "S"))),
       [1; 3; 1; 8]),
     [Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "S_B"))),
        [1; 1; 3; 1; 8]);
      Tree_t.Leaf
         (Figure_symbol_t.Figure_set_fence_symbol
           (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
             (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
               "S_C"))),
        [2; 1; 3; 1; 8])])])
);;

let tag_fig_fba_st = Tree_v.make_of_node tag_fig_fba [tag_fig_fbo_st];;

test_number 8 (
(tag_fig_fba_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_database_symbol
        (Figure_context_database_symbol_t.Figure_context_database_constructor
          "db1points")),
     [1; 8]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_databox_symbol
          (Figure_context_databox_symbol_t.Figure_context_databox_constructor
            "cc_pvtz")),
       [3; 1; 8]),
     [Tree_t.Inner
          (Figure_symbol_t.Figure_set_body_symbol
            (Figure_set_body_symbol_t.Figure_set_body_cc_pvtzymbol
              (Figure_set_body_cc_pvtzymbol_t.Figure_set_body_segment_constructor
                "S"))),
         [1; 3; 1; 8]),
       [Tree_t.Leaf
           (Figure_symbol_t.Figure_set_fence_symbol
             (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
               (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                 "S_B"))),
          [1; 1; 3; 1; 8]);
        Tree_t.Leaf
           (Figure_symbol_t.Figure_set_fence_symbol
             (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
               (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                 "S_C"))),
          [2; 1; 3; 1; 8])])])])
);;

let tag_fig_t = Tree_v.make_of_node tag_fig_dom [tag_fig_fba_st];;

test_number 9 (
( tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_context_domain_symbol
        (Figure_context_domain_symbol_t.Figure_context_domain_constructor
          "figure")),
     [8]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_context_database_symbol
          (Figure_context_database_symbol_t.Figure_context_database_constructor
            "db1points")),
       [1; 8]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_context_symbol
          (Figure_context_symbol_t.Figure_context_databox_symbol
            (Figure_context_databox_symbol_t.Figure_context_databox_constructor
              "cc_pvtz")),
         [3; 1; 8]),
       [Tree_t.Inner
            (Figure_symbol_t.Figure_set_body_symbol
              (Figure_set_body_symbol_t.Figure_set_body_cc_pvtzymbol
                (Figure_set_body_cc_pvtzymbol_t.Figure_set_body_segment_constructor
                  "S"))),
           [1; 3; 1; 8]),
         [Tree_t.Leaf
             (Figure_symbol_t.Figure_set_fence_symbol
               (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                 (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                   "S_B"))),
            [1; 1; 3; 1; 8]);
          Tree_t.Leaf
             (Figure_symbol_t.Figure_set_fence_symbol
               (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
                 (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
                   "S_C"))),
            [2; 1; 3; 1; 8])])])])])
);;

test_number 10 (
tag_fig_t = provide (bna_dbo, bna_dba)
);;
