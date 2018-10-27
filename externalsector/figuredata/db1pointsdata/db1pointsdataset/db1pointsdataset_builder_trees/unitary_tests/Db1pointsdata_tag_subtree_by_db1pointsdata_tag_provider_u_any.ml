open Make_test_v;;

testing "Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v with
        Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v;;

let nam_dbo = "Point_a";;
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_db1_BAsl = List.filter 
    (fun (s, i) -> (Db1pointsdata_symbol_v.string_off s = "A") 
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol s)
    )
    tag_db1_l;;

test_number 1 (
(tag_db1_BAsl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
           (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
             "A")))),
    [1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
         (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_coordinates_symbol
           (Db1pointsdata_set_body_bundle_coordinates_symbol_t.Db1pointsdata_set_body_bundle_coordinates_constructor
             "A")))),
    [1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
         (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
           (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
             "A")))),
    [2; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
           (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
             "A")))),
    [2; 10; 1; 7; 2])]
);;

let tag_db1_FAsl = List.filter 
    (fun (s, i) -> (Db1pointsdata_symbol_v.string_off s = "A") 
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s)
    )
    tag_db1_l;;

test_number 2 (
(tag_db1_FAsl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
         (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol
           (Db1pointsdata_set_fence_cell_coordinates_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_symbol
             (Db1pointsdata_set_fence_cell_coordinates_units_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_length_symbol
               (Db1pointsdata_set_fence_cell_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_length_constructor
                 "A")))))),
    [1; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
         (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
           (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_symbol
             (Db1pointsdata_set_fence_token_coordinates_units_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_symbol
               (Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol
                 (Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor
                   "A"))))))),
    [1; 1; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
         (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol
           (Db1pointsdata_set_fence_cell_coordinates_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_symbol
             (Db1pointsdata_set_fence_cell_coordinates_units_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol
               (Db1pointsdata_set_fence_cell_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_cell_coordinates_units_angle_constructor
                 "A")))))),
    [2; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
         (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
           (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_symbol
             (Db1pointsdata_set_fence_token_coordinates_units_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_symbol
               (Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol
                 (Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor
                   "A"))))))),
    [1; 2; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
         (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_coordinates_symbol
           (Db1pointsdata_set_fence_cell_coordinates_symbol_t.Db1pointsdata_set_fence_cell_coordinates_kind_symbol
             (Db1pointsdata_set_fence_cell_coordinates_kind_symbol_t.Db1pointsdata_set_fence_cell_coordinates_kind_constructor
               "A"))))),
    [3; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
         (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
           (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_symbol
             (Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
               (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor
                 "A")))))),
    [1; 3; 1; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
         (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol
           (Db1pointsdata_set_fence_cell_figure_symbol_t.Db1pointsdata_set_fence_cell_figure_kind_symbol
             (Db1pointsdata_set_fence_cell_figure_kind_symbol_t.Db1pointsdata_set_fence_cell_figure_kind_constructor
               "A"))))),
    [1; 2; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
         (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_figure_symbol
           (Db1pointsdata_set_fence_token_figure_symbol_t.Db1pointsdata_set_fence_token_figure_kind_symbol
             (Db1pointsdata_set_fence_token_figure_kind_symbol_t.Db1pointsdata_set_fence_token_figure_kind_point_symbol
               (Db1pointsdata_set_fence_token_figure_kind_point_symbol_t.Db1pointsdata_set_fence_token_figure_kind_point_constructor
                 "A")))))),
    [1; 1; 2; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_cell_symbol
         (Db1pointsdata_set_fence_cell_symbol_t.Db1pointsdata_set_fence_cell_figure_symbol
           (Db1pointsdata_set_fence_cell_figure_symbol_t.Db1pointsdata_set_fence_cell_figure_name_symbol
             (Db1pointsdata_set_fence_cell_figure_name_symbol_t.Db1pointsdata_set_fence_cell_figure_name_constructor
               "A"))))),
    [2; 2; 1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_word_symbol
           (Db1pointsdata_set_fence_basic_word_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_symbol
             (Db1pointsdata_set_fence_basic_word_uppercase_symbol_t.Db1pointsdata_set_fence_basic_word_uppercase_constructor
               "A"))))),
    [1; 2; 2; 1; 10; 1; 7; 2])]
);;

let tag_db1_Flsl = List.filter 
    (fun (s, i) -> 
      (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor s)
    )
    tag_db1_l;;

test_number 3 (
(tag_db1_Flsl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "1."))))),
    [1; 3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "0.785398163397448279"))))),
    [2; 3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "0.785398163397448279"))))),
    [3; 3; 1; 2; 10; 1; 7; 2])]
);;

let tag_db1 = List.hd tag_db1_Flsl;;

test_number 4 (
(tag_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
      (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
        (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
          (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
            (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
              "1."))))),
   [1; 3; 1; 2; 10; 1; 7; 2])
);;

let soi_db1 = Tag_v.sole_index_off_tag tag_db1 ;;

test_number 5 (
(soi_db1 : Sole_index_t.sole_index ) = 
[1; 3; 1; 2; 10; 1; 7; 2]
);;

let tag_dbo = Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_context_databox_tag_off_sole_index soi_db1;;

test_number 6 (
(tag_dbo :
  Db1pointsdata_context_databox_symbol_t.db1pointsdata_context_databox_symbol
  Tag_t.tag ) =
  (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
    "Point_a",
   [10; 1; 7; 2])
);;

let tag_db1_t = Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide tag_dbo;;

let tag_db1_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_db1) tag_db1_t;;
let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_db1_st;;

let tag_clo_l = List.filter 
    (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s) )  
    tag_lea_l;;

let soi_nfe = soi_db1;;

let tag_nfe = Db1pointsdata_any_category_by_sole_index_extractor_v.db1pointsdata_set_fence_tag_off_sole_index soi_nfe;;

test_number 7 (
(tag_nfe : Db1pointsdata_set_fence_symbol_t.db1pointsdata_set_fence_symbol Tag_t.tag ) =
(Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
   (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
      (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
         (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
            "1."))),
 [1; 3; 1; 2; 10; 1; 7; 2])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_db1_fen) tag_db1_t);;

test_number 8 (
( tag_pat : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
           (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
             "A")))),
    [2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
         (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
           (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
             "A_A")))),
    [1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
         (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
           (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
             "A_A")))),
    [3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "1."))))),
    [1; 3; 1; 2; 10; 1; 7; 2])]
);;
