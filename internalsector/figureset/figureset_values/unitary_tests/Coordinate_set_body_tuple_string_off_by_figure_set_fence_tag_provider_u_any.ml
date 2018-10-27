open Make_test_v;;

testing "Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v with
    Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_u_any.ml";; 

*)

open Coordinate_set_body_tuple_string_off_by_figure_set_fence_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_fig_l = 
    Figure_tag_all_list_by_databox_name_n_database_name_provider_v.provide 
      (nam_dbo, nam_dba);;

let pre_tag_fig_sof sof (s, i) = 
    (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s)
      && 
    (Figure_symbol_v.string_off s = sof)
;;

let sof_fsf = "A";;
let tag_fig_fsf = List_v.only_element_of_predicate_off_list (pre_tag_fig_sof sof_fsf) tag_fig_l;;

test_number 1 (
( tag_fig_fsf : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_set_symbol
    (Figure_set_symbol_t.Figure_set_fence_symbol
      (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
        (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
          "A"))),
   [1; 10; 1; 7; 5])
);;

(* Argument *)

let tag_fsf = Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag tag_fig_fsf;;
 
test_number 2 (
(tag_fsf : Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag ) =
  (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
    (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor "A"),
   [1; 10; 1; 7; 5])
);;
 
test_number 3 (
sof_fsf = Figure_set_fence_tag_v.string_off tag_fsf
);;

let soi_fsf = Tag_v.sole_index_off_tag tag_fsf;;

test_number 4 (
(soi_fsf : Sole_index_t.sole_index ) = 
[1; 10; 1; 7; 5]
);;

let tag_dbo = 
  Figure_context_databox_tag_by_any_sole_index_provider_v.provide
    soi_fsf
;;

test_number 5 (
(tag_dbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "Point_a",
   [10; 1; 7; 5])
);;

test_number 6 (
(nam_dbo, nam_dba) =
    Databox_name_n_database_name_by_figure_context_databox_tag_provider_v.provide 
      tag_dbo 
);;

let tag_db1_l = 
  Db1pointsdata_tag_all_list_by_databox_name_provider_v.provide 
    nam_dbo ;;
      
let pre_tag_dcv_sof sof (s, i) = 
  (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_vertex_constructor s)
    && 
  (Db1pointsdata_symbol_v.string_off s = sof)
;;
      
let tag_db1_dcv = List_v.only_element_of_predicate_off_list (pre_tag_dcv_sof sof_fsf) tag_db1_l;;

test_number 7 (
(tag_db1_dcv : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
          (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
            "A")))),
   [2; 10; 1; 7; 2])
);;

let soi_db1_dcv = Tag_v.sole_index_off_tag tag_db1_dcv;;

test_number 8 (
(soi_db1_dcv : Sole_index_t.sole_index ) = 
[2; 10; 1; 7; 2]
);;
    
let pre_tag_drv_soi soi (s, i) = 
  (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor s)
    && 
  (i = soi);;

let soi_db1_drv = Sole_index_v.make 1 soi_db1_dcv;;

test_number 9 (
(soi_db1_drv : Sole_index_t.sole_index ) = 
[1; 2; 10; 1; 7; 2]
);;

let tag_db1_drv = List_v.only_element_of_predicate_off_list (pre_tag_drv_soi soi_db1_drv) tag_db1_l;;
      
test_number 10 ( 
(tag_db1_drv : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
        (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
          (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
            "A_A")))),
   [1; 2; 10; 1; 7; 2])
);;

let sof_db1_drv = Db1pointsdata_tag_v.string_off tag_db1_drv;;

test_number 11 (
(sof_db1_drv : string ) = 
"A_A"
);;

test_number 12 (
sof_db1_drv = provide tag_fsf
);;
