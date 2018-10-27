open Make_test_v;;

testing "Figure_field_fence_point_tag_list_by_figure_tag_provider_v with
    Figure_field_fence_point_tag_list_by_figure_tag_provider_u_segment_s_debug.ml";;

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
   #use "Figure_field_fence_point_tag_list_by_figure_tag_provider_u_segment_s_debug.ml";; 

*)

(* Database file *)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;

Parameters_general_register_v.store_force "database-name" nam_dba;;
Parameters_general_register_v.store_force "databox-name" nam_dbo;;

let tag_fbo = Figure_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 1 (
(tag_fbo : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
(Figure_context_databox_symbol_t.Figure_context_databox_constructor
  "segment_s",
 [3; 1; 8])
);;

let tag_fig_l = Figure_tag_all_list_by_figure_context_databox_tag_provider_v.provide tag_fbo;;

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
         "db1figure")),
    [1; 8]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_s")),
    [3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_body_symbol
       (Figure_field_body_symbol_t.Figure_field_body_segment_symbol
         (Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor "S"))),
    [1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "S_B"))),
    [1; 1; 3; 1; 8]);
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_field_fence_point_symbol
         (Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "S_C"))),
    [2; 1; 3; 1; 8])]
);;

(* Argument tag_fig *)

open Figure_field_fence_point_tag_list_by_figure_tag_provider_v;; 

let tag_fig_fbs = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Figure_symbol_v.is_figure_field_body_segment_symbol_off_figure_symbol s)
    tag_fig_l
;;

let tag_fig = tag_fig_fbs;;

test_number 3 (
( tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_field_body_segment_symbol
        (Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor "S"))),
   [1; 3; 1; 8])
);;

let tag_fig_ffp_l = provide tag_fig;;
  
test_number 4 (
(tag_fig_ffp_l : Figure_field_fence_point_symbol_t.figure_field_fence_point_symbol list ) =
  [Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "S_B";
   Figure_field_fence_point_symbol_t.Figure_field_fence_point_constructor "S_C"]
);;
