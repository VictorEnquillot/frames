open Make_test_v;;

testing "Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v with
    Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_u_point_a_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* Debugging *)


(* toplevel 
   #use "Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_as_field_symbol_subtree_by_database_name_n_databox_name_provider_v;; 

let tag_dbo = 
  Db1figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_dbo);;

test_number 1 (
(tag_dbo :
  Db1figure_context_databox_symbol_t.db1figure_context_databox_symbol
  Tag_t.tag ) =
  (Db1figure_context_databox_symbol_t.Db1figure_context_databox_constructor
    "point_a",
   [1; 1; 8; 6])
);;

let tag_db1_dcv_st = 
    Db1figure_as_body_cluster_vertex_tag_subtree_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

test_number 2 (
(tag_db1_dcv_st :
  Db1figure_symbol_t.db1figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Db1figure_symbol_t.Db1figure_body_symbol
      (Db1figure_body_symbol_t.Db1figure_body_cluster_symbol
        (Db1figure_body_cluster_symbol_t.Db1figure_body_cluster_vertex_symbol
          (Db1figure_body_cluster_vertex_symbol_t.Db1figure_body_cluster_vertex_constructor
            "A"))),
     [2; 1; 1; 8; 6]),
   [Tree_t.Inner
     ((Db1figure_symbol_t.Db1figure_body_symbol
        (Db1figure_body_symbol_t.Db1figure_body_record_symbol
          (Db1figure_body_record_symbol_t.Db1figure_body_record_vertex_symbol
            (Db1figure_body_record_vertex_symbol_t.Db1figure_body_record_vertex_constructor
              "A"))),
       [1; 2; 1; 1; 8; 6]),
     [Tree_t.Leaf
       (Db1figure_symbol_t.Db1figure_fence_symbol
         (Db1figure_fence_symbol_t.Db1figure_fence_keyword_symbol
           Db1figure_fence_keyword_symbol_t.Db1figure_fence_keyword_vertex),
        [1; 1; 2; 1; 1; 8; 6]);
      Tree_t.Leaf
       (Db1figure_symbol_t.Db1figure_body_symbol
         (Db1figure_body_symbol_t.Db1figure_body_name_symbol
           (Db1figure_body_name_symbol_t.Db1figure_body_name_vertex_symbol
             (Db1figure_body_name_vertex_symbol_t.Db1figure_body_name_vertex_constructor
               "A"))),
        [2; 1; 2; 1; 1; 8; 6]);
      Tree_t.Inner
       ((Db1figure_symbol_t.Db1figure_body_symbol
          (Db1figure_body_symbol_t.Db1figure_body_sequence_symbol
            (Db1figure_body_sequence_symbol_t.Db1figure_body_sequence_float_symbol
              (Db1figure_body_sequence_float_symbol_t.Db1figure_body_sequence_float_constructor
                "A"))),
         [3; 1; 2; 1; 1; 8; 6]),
       [Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_fence_symbol
           (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
             (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
               (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
                 (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                   "1.")))),
          [1; 3; 1; 2; 1; 1; 8; 6]);
        Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_fence_symbol
           (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
             (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
               (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
                 (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                   "0.785398163397448279")))),
          [2; 3; 1; 2; 1; 1; 8; 6]);
        Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_fence_symbol
           (Db1figure_fence_symbol_t.Db1figure_fence_basic_symbol
             (Db1figure_fence_basic_symbol_t.Db1figure_fence_basic_numerical_symbol
               (Db1figure_fence_basic_numerical_symbol_t.Db1figure_fence_basic_numerical_float_symbol
                 (Db1figure_fence_basic_numerical_float_symbol_t.Db1figure_fence_basic_numerical_float_constructor
                   "0.785398163397448279")))),
          [3; 3; 1; 2; 1; 1; 8; 6])])])])
);;

let sym_db1_roo = Tag_v.entity_off_tag (Tree_v.root_off_tree tag_db1_dcv_st);;

test_number 3 (
(sym_db1_roo : Db1figure_symbol_t.db1figure_symbol ) =
  Db1figure_symbol_t.Db1figure_body_symbol
   (Db1figure_body_symbol_t.Db1figure_body_cluster_symbol
     (Db1figure_body_cluster_symbol_t.Db1figure_body_cluster_vertex_symbol
       (Db1figure_body_cluster_vertex_symbol_t.Db1figure_body_cluster_vertex_constructor
         "A")))
);;

let nam_roo = Db1figure_symbol_v.string_off sym_db1_roo;;

test_number 4 (
( nam_roo : string ) = 
"A"
);;

let sym_fig_ffp = 
	Figure_symbol_v.figure_field_fence_point_constructor
          nam_roo;;

test_number 5 (
(sym_fig_ffp : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
       (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A")))
);;

let sym_fig_st = Tree_v.make_of_leaf sym_fig_ffp;;

test_number 6 (
(sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))))
);;

let sym_dfk = 
    Db1figure_fence_token_figure_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

test_number 7 (
(sym_dfk :
  Db1figure_fence_token_figure_kind_symbol_t.db1figure_fence_token_figure_kind_symbol ) =
  Db1figure_fence_token_figure_kind_symbol_t.Db1figure_fence_token_figure_kind_point
);;

test_number 8 (
sym_fig_st = provide (nam_dba, nam_dbo)
);;
