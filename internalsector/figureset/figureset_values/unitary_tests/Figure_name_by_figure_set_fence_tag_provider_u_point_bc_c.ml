open Make_test_v;;

testing "Figure_name_by_figure_set_fence_tag_provider_v with
    Figure_name_by_figure_set_fence_tag_provider_u_point_bc_c.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_name_by_figure_set_fence_tag_provider_u_point_bc_c.ml";; 

*)

open Figure_name_by_figure_set_fence_tag_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;
let sof_fsf = "BC_C";;

let tag_fig_l = 
    Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let pre_tag_fig_sof sof (s, i) = 
    (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s)
      && 
    (Figure_symbol_v.string_off s = sof)
;;

let tag_fig_fsf = List_v.only_element_of_predicate_off_list (pre_tag_fig_sof sof_fsf) tag_fig_l;;

test_number 1 (
( tag_fig_fsf : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "BC_C"))),
   [2; 1; 15; 1; 7; 5])
);;

(* Argument *)

let tag_fsf = Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag tag_fig_fsf;;
 
test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
      "BC_C"),
   [2; 1; 15; 1; 7; 5])
);;

test_number 3 (
sof_fsf = Figure_set_fence_tag_v.string_off tag_fsf
);;

let soi_fsf = Tag_v.sole_index_off_tag tag_fsf;;

test_number 4 (
(soi_fsf : Sole_index_t.sole_index ) = 
[2; 1; 15; 1; 7; 5]
);;

let tag_dbo = 
  Figure_context_databox_tag_by_any_sole_index_provider_v.provide
    soi_fsf
;;

test_number 5 (
(tag_dbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "segment_BC",
   [15; 1; 7; 5])
);;

let tag_fig_dbo = 
    Figure_context_databox_tag_v.figure_tag_of_figure_context_databox_tag 
      tag_dbo;;

test_number 6 ( 
(tag_fig_dbo : Figure_symbol_t.figure_symbol Tag_t.tag ) =
(Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
      (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
 [15; 1; 7; 5])
);;

let tag_fig_son_l = 
    Figure_son_tag_list_by_figure_father_tag_provider_v.provide 
      tag_fig_dbo;;

test_number 7 (
( tag_fig_son_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_set_symbol
     (Figure_set_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
         (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
           "BC"))),
    [1; 15; 1; 7; 5])]
);;

let tag_fig_son = List_v.element_off_one_element_list tag_fig_son_l;;

test_number 8 (
(tag_fig_son : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_segment_symbol
        (Figure_set_body_segment_symbol_t.Figure_set_body_segment_constructor
          "BC"))),
   [1; 15; 1; 7; 5])
);;

let nam_fig = Figure_tag_v.string_off tag_fig_son;;

test_number 9 (
(nam_fig : string ) = 
"BC"
);;

test_number 10 (
nam_fig = provide tag_fsf
);;
