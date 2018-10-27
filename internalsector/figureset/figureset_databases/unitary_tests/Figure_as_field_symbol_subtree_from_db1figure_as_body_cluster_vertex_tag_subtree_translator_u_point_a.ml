open Make_test_v;;

testing "Figure_as_field_symbol_subtree_from_db1figure_as_body_cluster_vertex_tag_subtree_translator_v with
    Figure_as_field_symbol_subtree_from_db1figure_as_body_cluster_vertex_tag_subtree_translator_u_point_a_debug.ml";;

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
   #use "Figure_as_field_symbol_subtree_from_db1figure_as_body_cluster_vertex_tag_subtree_translator_u_point_a_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Figure_as_field_symbol_subtree_from_db1figure_as_body_cluster_vertex_tag_subtree_translator_v;; 

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
   ((Db1figure_symbol_t.Db1figure_field_body_symbol
      (Db1figure_field_body_symbol_t.Db1figure_field_body_cluster_symbol
        (Db1figure_field_body_cluster_symbol_t.Db1figure_field_body_cluster_vertex_symbol
          (Db1figure_field_body_cluster_vertex_symbol_t.Db1figure_field_body_cluster_vertex_constructor
            "A"))),
     [2; 1; 1; 8; 6]),
   [Tree_t.Inner
     ((Db1figure_symbol_t.Db1figure_field_body_symbol
        (Db1figure_field_body_symbol_t.Db1figure_field_body_record_symbol
          (Db1figure_field_body_record_symbol_t.Db1figure_field_body_record_vertex_symbol
            (Db1figure_field_body_record_vertex_symbol_t.Db1figure_field_body_record_vertex_constructor
              "A"))),
       [1; 2; 1; 1; 8; 6]),
     [Tree_t.Leaf
       (Db1figure_symbol_t.Db1figure_field_fence_symbol
         (Db1figure_field_fence_symbol_t.Db1figure_field_fence_keyword_symbol
           Db1figure_field_fence_keyword_symbol_t.Db1figure_field_fence_keyword_vertex),
        [1; 1; 2; 1; 1; 8; 6]);
      Tree_t.Leaf
       (Db1figure_symbol_t.Db1figure_field_body_symbol
         (Db1figure_field_body_symbol_t.Db1figure_field_body_name_symbol
           (Db1figure_field_body_name_symbol_t.Db1figure_field_body_name_vertex_symbol
             (Db1figure_field_body_name_vertex_symbol_t.Db1figure_field_body_name_vertex_constructor
               "A"))),
        [2; 1; 2; 1; 1; 8; 6]);
      Tree_t.Inner
       ((Db1figure_symbol_t.Db1figure_field_body_symbol
          (Db1figure_field_body_symbol_t.Db1figure_field_body_sequence_symbol
            (Db1figure_field_body_sequence_symbol_t.Db1figure_field_body_sequence_float_symbol
              (Db1figure_field_body_sequence_float_symbol_t.Db1figure_field_body_sequence_float_constructor
                "A"))),
         [3; 1; 2; 1; 1; 8; 6]),
       [Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_field_fence_symbol
           (Db1figure_field_fence_symbol_t.Db1figure_field_fence_basic_symbol
             (Db1figure_field_fence_basic_symbol_t.Db1figure_field_fence_basic_numerical_symbol
               (Db1figure_field_fence_basic_numerical_symbol_t.Db1figure_field_fence_basic_numerical_float_symbol
                 (Db1figure_field_fence_basic_numerical_float_symbol_t.Db1figure_field_fence_basic_numerical_float_constructor
                   "1.")))),
          [1; 3; 1; 2; 1; 1; 8; 6]);
        Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_field_fence_symbol
           (Db1figure_field_fence_symbol_t.Db1figure_field_fence_basic_symbol
             (Db1figure_field_fence_basic_symbol_t.Db1figure_field_fence_basic_numerical_symbol
               (Db1figure_field_fence_basic_numerical_symbol_t.Db1figure_field_fence_basic_numerical_float_symbol
                 (Db1figure_field_fence_basic_numerical_float_symbol_t.Db1figure_field_fence_basic_numerical_float_constructor
                   "0.785398163397448279")))),
          [2; 3; 1; 2; 1; 1; 8; 6]);
        Tree_t.Leaf
         (Db1figure_symbol_t.Db1figure_field_fence_symbol
           (Db1figure_field_fence_symbol_t.Db1figure_field_fence_basic_symbol
             (Db1figure_field_fence_basic_symbol_t.Db1figure_field_fence_basic_numerical_symbol
               (Db1figure_field_fence_basic_numerical_symbol_t.Db1figure_field_fence_basic_numerical_float_symbol
                 (Db1figure_field_fence_basic_numerical_float_symbol_t.Db1figure_field_fence_basic_numerical_float_constructor
                   "0.785398163397448279")))),
          [3; 3; 1; 2; 1; 1; 8; 6])])])])
);;

let tag_db1_dcv = Tree_v.root_off_tree tag_db1_dcv_st ;;

test_number 3 (
(tag_db1_dcv : Db1figure_symbol_t.db1figure_symbol Tag_t.tag ) =
  (Db1figure_symbol_t.Db1figure_field_body_symbol
    (Db1figure_field_body_symbol_t.Db1figure_field_body_cluster_symbol
      (Db1figure_field_body_cluster_symbol_t.Db1figure_field_body_cluster_vertex_symbol
        (Db1figure_field_body_cluster_vertex_symbol_t.Db1figure_field_body_cluster_vertex_constructor
          "A"))),
   [2; 1; 1; 8; 6])
);;

let soi_db1_dcv = Tag_v.sole_index_off_tag tag_db1_dcv;;

test_number 4 (
(soi_db1_dcv : Sole_index_t.sole_index ) = 
[2; 1; 1; 8; 6]
);;


test_number 5 (
tag_dbo =  
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_context_databox_tag_off_sole_index
      soi_db1_dcv
);;

test_number 6 (
(nam_dba, nam_dbo) = 
    database_name_n_databox_name_of_sole_index 
      soi_db1_dcv 
);;

let sym_dfk = 
    Db1figure_field_fence_token_figure_kind_symbol_by_db1figure_context_databox_tag_provider_v.provide
      tag_dbo;;

test_number 7 (
(sym_dfk :
  Db1figure_field_fence_token_figure_kind_symbol_t.db1figure_field_fence_token_figure_kind_symbol ) =
  Db1figure_field_fence_token_figure_kind_symbol_t.Db1figure_field_fence_token_figure_kind_point
);;

let nof_dbo =
    Context_databox_nameoffile_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo) ;;

test_number 8 (
(nof_dbo : String.t ) = 
"point_a.db1"
);;

let tag_db1 = tag_db1_dcv;;

let (sym_db1, soi_db1) = tag_db1 ;;

test_number 9 (
( sym_db1 : Db1figure_symbol_t.db1figure_symbol ) =
  Db1figure_symbol_t.Db1figure_field_body_symbol
   (Db1figure_field_body_symbol_t.Db1figure_field_body_cluster_symbol
     (Db1figure_field_body_cluster_symbol_t.Db1figure_field_body_cluster_vertex_symbol
       (Db1figure_field_body_cluster_vertex_symbol_t.Db1figure_field_body_cluster_vertex_constructor
         "A")))
);;

test_number 10 (
(soi_db1 : Sole_index_t.sole_index ) = 
[2; 1; 1; 8; 6]
);;

let sym_fig_ffi = 
  Figure_symbol_from_db1figure_tag_translations_v.figure_as_field_symbol_of_db1figure_figure_kind_of_databox_nameoffile_of_db1figure_as_body_cluster_vertex_symbol 
    sym_dfk 
    nof_dbo 
    sym_db1;;

test_number 11 (
(sym_fig_ffi : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_field_symbol
   (Figure_field_symbol_t.Figure_field_fence_symbol
     (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
       (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A")))
);; 

let sym_fig_ffi_st = translate tag_db1_dcv_st;;

test_number 12 (
(sym_fig_ffi_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))),
   [Tree_t.Leaf
     (Figure_symbol_t.Figure_field_symbol
       (Figure_field_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
           (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "A"))))])
);;


let tag_fig_fba = Figure_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fig_fba : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_database_symbol
      (Figure_context_database_symbol_t.Figure_context_database_constructor
        "db1figure")),
   [1; 8])
);;

let tag_fig_fbo = 
  Figure_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo);;

test_number 3 (
(tag_fig_fbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
 [1; 1; 8])
);;
  
let tag_fig_fco_t = Trio_v.make tag_fig_fcd tag_fig_fba tag_fig_fbo;;

test_number 4 (
(tag_fig_fco_t : Figure_symbol_t.figure_symbol Tag_t.tag Trio_t.trio ) =
  ((Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1figure")),
    [1; 8]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "point_a")),
    [1; 1; 8]))
);;

test_number 5 (
tag_fig_fco_t = provide (nam_dba, nam_dbo)
);;
