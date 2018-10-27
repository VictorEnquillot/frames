open Make_test_v;;

testing "Figure_any_category_by_sole_index_extractor_v with
    Figure_any_category_by_sole_index_extractor_u_cc_pvtz.ml";;

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
   #use "Figure_any_category_by_sole_index_extractor_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (bna_dbo, bna_dba) *)

open Figure_any_category_by_sole_index_extractor_v;; 

let tag_dbo = 
	Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
	  (bna_dbo, bna_dba) ;;

test_number 1 (
(tag_dbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "cc_pvtz",
   [3; 1; 8])
);;

let tag_fig_l = (Figure_tag_all_list_by_figure_context_databox_tag_provider_v.provide tag_dbo);;

test_number 2 (
(tag_fig_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "cc_pvtz")),
    [3; 1; 8]);
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_cc_pvtzymbol
         (Figure_set_body_cc_pvtzymbol_t.Figure_set_body_segment_constructor
           "S"))),
    [1; 3; 1; 8]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let soi_any = Tag_v.sole_index_off_tag (List_v.last_element_off_list tag_fig_l);;

test_number 3 (
(soi_any : Sole_index_t.sole_index ) = 
[2; 1; 3; 1; 8]
);;

let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_any;;

test_number 4 (
(soi_fat : Sole_index_t.sole_index ) = 
[1; 3; 1; 8]
);;

let str_pre = "is_figure_set_fence_point_symbol_off_figure_symbol";;
let tag_fig_son_l = son_figure_tag_list_of_string_predicate_of_father_sole_index str_pre soi_fat;;

test_number 5 (
(tag_fig_son_l :
  (Figure_symbol_t.figure_symbol, Sole_index_t.sole_index) Doublet_t.doublet
  list ) =
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
         (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let tag_fcd = figure_context_domain_tag_off_sole_index soi_any;;

test_number 6 (
(tag_fcd :
   Figure_context_domain_symbol_t.figure_context_domain_symbol Tag_t.tag ) =
(Figure_context_domain_symbol_t.Figure_context_domain_constructor "figure",
 [8])
);;

let tag_fbo = figure_context_databox_tag_off_sole_index soi_any;;

test_number 7 (
( tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "cc_pvtz",
   [3; 1; 8])
);;

let soi_ffp = figure_set_fence_point_sole_index_off_sole_index soi_any;;

test_number 8 (
soi_ffp = soi_any
);;
