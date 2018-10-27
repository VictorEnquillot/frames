open Make_test_v;;

testing "Figure_bridge_by_figure_set_fence_tag_provider_v with
    Figure_bridge_by_figure_set_fence_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Figure_bridge_by_figure_set_fence_tag_provider_u_any.ml";; 

*)

open Figure_bridge_by_figure_set_fence_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_fig_l = Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_fig_a = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Figure_symbol_v.is_figure_set_fence_point_constructor s)
	&& (Figure_symbol_v.string_off s = "A") 
    ) tag_fig_l;;

test_number 1 (
(tag_fig_a : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "A"))),
   [1; 10; 1; 7; 5])
);;

let tag_fsf = Tag_v.map_entity Figure_symbol_v.figure_set_fence_symbol_off_figure_symbol tag_fig_a;;

test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "A"),
   [1; 10; 1; 7; 5])
);;

let sof_fsf = Figure_set_fence_tag_v.string_off tag_fsf;;

test_number 3 (
(sof_fsf : string ) = 
"A"
);;

let soi_fsf = Tag_v.sole_index_off_tag tag_fsf;;

test_number 4 (
(soi_fsf : Sole_index_t.sole_index ) = 
[1; 10; 1; 7; 5]
);;

let tag_cbo = 
  Coordinate_context_databox_tag_by_any_sole_index_provider_v.provide
    soi_fsf;;

test_number 5 (
(tag_cbo :
  Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol
  Tag_t.tag ) =  
(Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
   "Point_a",
 [10; 1; 7; 5])
);;

let tag_coo_l = 
    Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide 
      tag_cbo;;

let sof_csf = "A_A"
let pre_tag_fsf_sof sof (s, i) = 
    (Coordinate_symbol_v.is_coordinate_set_body_tuple_symbol_off_coordinate_symbol s)
      && 
    (Coordinate_symbol_v.string_off s = sof_csf);;

let bri_a = List_v.only_element_of_predicate_off_list 
    (pre_tag_fsf_sof sof_fsf) 
    tag_coo_l;;

test_number 6 (
(bri_a : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_body_symbol
      (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
        (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
          (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
            (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
              "A_A"))))),
   [1; 10; 1; 5; 5])
);;

test_number 7 (
bri_a = provide tag_fsf
);;
