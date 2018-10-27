open Make_test_v;;

testing "Figure_bridge_by_figure_set_fence_tag_provider_v with
    Figure_bridge_by_figure_set_fence_tag_provider_u_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_bridge_by_figure_set_fence_tag_provider_u_triangle_w.ml";; 

*)

open Figure_bridge_by_figure_set_fence_tag_provider_v;;

let nam_dbo = "segment_BC";;
let nam_dba = "db1points";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

let tag_fig_fsf = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_fence_point_constructor s)
	&&
      (Figure_symbol_v.string_off s = "BC_B")
    )
    tag_fig_l;;

test_number 1 (
(tag_fig_fsf : Figure_symbol_t.figure_symbol Tag_t.tag) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "BC_B"))),
   [1; 1; 15; 1; 7; 5])
);;

(* Argument *)

let tag_fsf = Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag tag_fig_fsf;;

test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
      "BC_B"),
   [1; 1; 15; 1; 7; 5])
);;

let soi_fsf = Tag_v.sole_index_off_tag tag_fsf;;

let tag_cbo = 
    Coordinate_context_databox_tag_by_any_sole_index_provider_v.provide
      soi_fsf
;;

test_number 3 (
( tag_cbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "segment_BC",
   [15; 1; 7; 5])
);;

let tag_coo_l = 
    Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide 
      tag_cbo
;;

let pre_tag_csf_sof sof (s, i) = 
    (Coordinate_symbol_v.is_coordinate_set_body_tuple_symbol_off_coordinate_symbol s)
      && 
    (Coordinate_symbol_v.string_off s = sof)
;;

let sof_csf = 
    Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v.provide
      tag_fsf
;;

test_number 4 (
(sof_csf : string ) = 
"BC_B"
);;

let bri_fsf = List_v.only_element_of_predicate_off_list 
      (pre_tag_csf_sof sof_csf) 
      tag_coo_l;;

test_number 5 (
(bri_fsf : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
            (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
              "BC_B"))))),
   [1; 15; 1; 5; 5])
);;

test_number 6 (
bri_fsf = provide tag_fsf
);;

