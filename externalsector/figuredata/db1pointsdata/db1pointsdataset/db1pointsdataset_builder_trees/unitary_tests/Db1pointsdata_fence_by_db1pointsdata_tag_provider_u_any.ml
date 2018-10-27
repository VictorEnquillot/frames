open Make_test_v;;

testing "Db1pointsdata_fence_by_db1pointsdata_tag_provider_v with
    Db1pointsdata_fence_by_db1pointsdata_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_fence_by_db1pointsdata_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_fence_by_db1pointsdata_tag_provider_v;;

let nam_dbo = "Point_a";;
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_db1_BAsl = List.filter 
    (fun (s, i) -> (Db1pointsdata_symbol_v.string_off s = "A") 
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_symbol_off_db1pointsdata_symbol s)
    )
    tag_db1_l;;

test_number 1 (
(tag_db1_BAsl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
         (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
           "A"))),
    [1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
       (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_coordinates_symbol
         (Db1pointsdata_set_body_bundle_coordinates_symbol_t.Db1pointsdata_set_body_bundle_coordinates_constructor
           "A"))),
    [1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
       (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
         (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
           "A"))),
    [2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
         (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
           "A"))),
    [2; 5; 1; 7; 2])]
);;

let tag_db1_FAsl = List.filter 
    (fun (s, i) -> (Db1pointsdata_symbol_v.string_off s = "A") 
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s)
    )
    tag_db1_l;;

test_number 2 (
(tag_db1_FAsl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_coordinates_symbol
         (Db1pointsdata_fence_cell_coordinates_symbol_t.Db1pointsdata_fence_cell_coordinates_units_symbol
           (Db1pointsdata_fence_cell_coordinates_units_symbol_t.Db1pointsdata_fence_cell_coordinates_units_length_symbol
             (Db1pointsdata_fence_cell_coordinates_units_length_symbol_t.Db1pointsdata_fence_cell_coordinates_units_length_constructor
               "A"))))),
    [1; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_units_symbol
           (Db1pointsdata_fence_token_coordinates_units_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_symbol
             (Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_symbol
               (Db1pointsdata_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_constructor
                 "A")))))),
    [1; 1; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_coordinates_symbol
         (Db1pointsdata_fence_cell_coordinates_symbol_t.Db1pointsdata_fence_cell_coordinates_units_symbol
           (Db1pointsdata_fence_cell_coordinates_units_symbol_t.Db1pointsdata_fence_cell_coordinates_units_angle_symbol
             (Db1pointsdata_fence_cell_coordinates_units_angle_symbol_t.Db1pointsdata_fence_cell_coordinates_units_angle_constructor
               "A"))))),
    [2; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_units_symbol
           (Db1pointsdata_fence_token_coordinates_units_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_symbol
             (Db1pointsdata_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_radian_symbol
               (Db1pointsdata_fence_token_coordinates_units_angle_radian_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_radian_constructor
                 "A")))))),
    [1; 2; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_coordinates_symbol
         (Db1pointsdata_fence_cell_coordinates_symbol_t.Db1pointsdata_fence_cell_coordinates_kind_symbol
           (Db1pointsdata_fence_cell_coordinates_kind_symbol_t.Db1pointsdata_fence_cell_coordinates_kind_constructor
             "A")))),
    [3; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_kind_symbol
           (Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_symbol
             (Db1pointsdata_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_constructor
               "A"))))),
    [1; 3; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_figure_symbol
         (Db1pointsdata_fence_cell_figure_symbol_t.Db1pointsdata_fence_cell_figure_kind_symbol
           (Db1pointsdata_fence_cell_figure_kind_symbol_t.Db1pointsdata_fence_cell_figure_kind_constructor
             "A")))),
    [1; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_figure_symbol
         (Db1pointsdata_fence_token_figure_symbol_t.Db1pointsdata_fence_token_figure_kind_symbol
           (Db1pointsdata_fence_token_figure_kind_symbol_t.Db1pointsdata_fence_token_figure_kind_point_symbol
             (Db1pointsdata_fence_token_figure_kind_point_symbol_t.Db1pointsdata_fence_token_figure_kind_point_constructor
               "A"))))),
    [1; 1; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_figure_symbol
         (Db1pointsdata_fence_cell_figure_symbol_t.Db1pointsdata_fence_cell_figure_name_symbol
           (Db1pointsdata_fence_cell_figure_name_symbol_t.Db1pointsdata_fence_cell_figure_name_constructor
             "A")))),
    [2; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_word_symbol
         (Db1pointsdata_fence_basic_word_symbol_t.Db1pointsdata_fence_basic_word_uppercase_symbol
           (Db1pointsdata_fence_basic_word_uppercase_symbol_t.Db1pointsdata_fence_basic_word_uppercase_constructor
             "A")))),
    [1; 2; 2; 1; 5; 1; 7; 2])]
);;

let tag_db1 = List.hd tag_db1_BAsl;;

test_number 3 (
(tag_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "A"))),
   [1; 5; 1; 7; 2])
);;

let tag_db1_st = Db1pointsdata_tag_subtree_by_db1pointsdata_tag_provider_v.provide tag_db1;;

let fen_db1 = Tree_v.leaf_node_list_off_tree tag_db1_st;;

test_number 4 (
( fen_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
 [(Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_units_symbol
           (Db1pointsdata_fence_token_coordinates_units_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_symbol
             (Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_symbol
               (Db1pointsdata_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_constructor
                 "A")))))),
    [1; 1; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_units_symbol
           (Db1pointsdata_fence_token_coordinates_units_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_symbol
             (Db1pointsdata_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_radian_symbol
               (Db1pointsdata_fence_token_coordinates_units_angle_radian_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_radian_constructor
                 "A")))))),
    [1; 2; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
         (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_kind_symbol
           (Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_symbol
             (Db1pointsdata_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical_constructor
               "A"))))),
    [1; 3; 1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
       (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_figure_symbol
         (Db1pointsdata_fence_token_figure_symbol_t.Db1pointsdata_fence_token_figure_kind_symbol
           (Db1pointsdata_fence_token_figure_kind_symbol_t.Db1pointsdata_fence_token_figure_kind_point_symbol
             (Db1pointsdata_fence_token_figure_kind_point_symbol_t.Db1pointsdata_fence_token_figure_kind_point_constructor
               "A"))))),
    [1; 1; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_word_symbol
         (Db1pointsdata_fence_basic_word_symbol_t.Db1pointsdata_fence_basic_word_uppercase_symbol
           (Db1pointsdata_fence_basic_word_uppercase_symbol_t.Db1pointsdata_fence_basic_word_uppercase_constructor
             "A")))),
    [1; 2; 2; 1; 5; 1; 7; 2])]
);;

let tag_db1_fen = List_v.last_element_off_list fen_db1;;

test_number 5 (
(tag_db1_fen : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
      (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_word_symbol
        (Db1pointsdata_fence_basic_word_symbol_t.Db1pointsdata_fence_basic_word_uppercase_symbol
          (Db1pointsdata_fence_basic_word_uppercase_symbol_t.Db1pointsdata_fence_basic_word_uppercase_constructor
            "A")))),
   [1; 2; 2; 1; 5; 1; 7; 2])
);;

let tag_db1_t = Db1pointsdata_tag_tree_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_db1_fen) tag_db1_t);;

test_number 6 (
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
    [5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
         (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
           "A"))),
    [1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_bundle_symbol
       (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_figure_symbol
         (Db1pointsdata_set_body_bundle_figure_symbol_t.Db1pointsdata_set_body_bundle_figure_constructor
           "A"))),
    [2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_cell_symbol
       (Db1pointsdata_fence_cell_symbol_t.Db1pointsdata_fence_cell_figure_symbol
         (Db1pointsdata_fence_cell_figure_symbol_t.Db1pointsdata_fence_cell_figure_name_symbol
           (Db1pointsdata_fence_cell_figure_name_symbol_t.Db1pointsdata_fence_cell_figure_name_constructor
             "A")))),
    [2; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_word_symbol
         (Db1pointsdata_fence_basic_word_symbol_t.Db1pointsdata_fence_basic_word_uppercase_symbol
           (Db1pointsdata_fence_basic_word_uppercase_symbol_t.Db1pointsdata_fence_basic_word_uppercase_constructor
             "A")))),
    [1; 2; 2; 1; 5; 1; 7; 2])]
);;
