open Make_test_v;;

testing "Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v with
    Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_u_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* coordinates_units_length  nanometer  *)
(* coordinates_kind          cartesian  *)
(* figure_kind               triangle  *)
(* figure_name W *)
(* vertex W_A       1.   0.   0. *)
(* vertex W_B       0.   2.   0. *)
(* vertex W_C       0.   0.   3.   *)

(* toplevel 
   #use "Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_u_triangle_w.ml";; 

*)

open Figure_set_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v;;

let nam_dbo = "triangle_w";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_dcd = 
  Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v.provide
    bna_dbo;;

test_number 1 (
(tag_dcd :
   Db1pointsdata_context_databox_symbol_t.db1pointsdata_context_databox_symbol
   Tag_t.tag ) =
 (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
    "triangle_w",
   [25; 1; 7; 2])
);;

let sym_db1_dcv_st = 
    Db1pointsdata_as_set_body_cluster_vertex_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo;;

test_number 2 (
(sym_db1_dcv_st : Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
           (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
             "W")))),
   [Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
           (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
             (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
               "W_A")))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
           (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
             (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
               (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
                 "W_A")))));
      Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
             (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
               (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
                 "W_A")))));
      Tree_t.Inner
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
             (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
               (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
                 "W_A")))),
       [Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "1."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))))])]);
    Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
           (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
             (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
               "W_B")))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
           (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
             (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
               (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
                 "W_B")))));
      Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
             (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
               (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
                 "W_B")))));
      Tree_t.Inner
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
             (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
               (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
                 "W_B")))),
       [Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "2."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))))])]);
    Tree_t.Inner
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
         (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
           (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
             (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
               "W_C")))),
     [Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
           (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_keyword_symbol
             (Db1pointsdata_set_fence_keyword_symbol_t.Db1pointsdata_set_fence_keyword_vertex_symbol
               (Db1pointsdata_set_fence_keyword_vertex_symbol_t.Db1pointsdata_set_fence_keyword_vertex_constructor
                 "W_C")))));
      Tree_t.Leaf
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
             (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
               (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
                 "W_C")))));
      Tree_t.Inner
       (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
         (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
           (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
             (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
               (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
                 "W_C")))),
       [Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "0."))))));
        Tree_t.Leaf
         (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
           (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
             (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
               (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
                 (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
                   (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                     "3."))))))])])])
);;

let sym_dfk = 
    Db1pointsdata_set_fence_token_figure_kind_symbol_by_basicname_databox_provider_v.provide
      bna_dbo;;

test_number 3 (
( sym_dfk :
  Db1pointsdata_set_fence_token_figure_kind_symbol_t.db1pointsdata_set_fence_token_figure_kind_symbol ) =
  Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_triangle_symbol
   (Db1pointsdata_set_fence_token_figure_kind_triangle_symbol_t.Db1pointsdata_set_fence_token_figure_kind_triangle_constructor
     "W")
);;

let nof_dbo =
  Databox_nameoffile_by_basicname_databox_n_basicname_database_provider_v.provide 
    (bna_dbo, bna_dba) ;;

test_number 4 (
(nof_dbo : String.t ) = 
"triangle_w.db1"
);;

let sym_fig_st = 
  figure_as_body_symbol_subtree_of_db1pointsdata_figure_kind_of_basicname_databoxoffile_of_db1pointsdata_as_set_body_cluster_vertex_symbol_subtree
    sym_dfk 
    nof_dbo 
    sym_db1_dcv_st;;

test_number 5 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_triangle_symbol
         (Figure_set_body_triangle_symbol_t.Figure_set_body_triangle_scalene_symbol
           (Figure_set_body_triangle_scalene_symbol_t.Figure_set_body_triangle_scalene_acute_symbol
             (Figure_set_body_triangle_scalene_acute_symbol_t.Figure_set_body_triangle_scalene_acute_constructor
               "W"))))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
             "W_A"))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
             "W_B"))));
    Tree_t.Leaf
     (Figure_symbol_t.Figure_set_symbol
       (Figure_set_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
           (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
             "W_C"))))])
);;

let sym_fsf_st = Tree_v.map Figure_symbol_v.figure_set_symbol_off_figure_symbol sym_fig_st;;

test_number 6 (
sym_fsf_st = provide tag_dcd
);;

