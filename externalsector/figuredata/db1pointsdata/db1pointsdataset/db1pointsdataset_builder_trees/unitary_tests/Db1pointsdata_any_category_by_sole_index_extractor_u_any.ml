open Make_test_v;;

testing "Db1pointsdata_any_category_by_sole_index_extractor_v with
    Db1pointsdata_any_category_by_sole_index_extractor_u_any.ml";;

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
   #use "Db1pointsdata_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Db1pointsdata_any_category_by_sole_index_extractor_v;;

let nam_dbo = "Point_a";;
 
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;
let soi_db1_l = Doublet_list_v.right_list_off_doublet_list tag_db1_l;;

test_number 1 (
(soi_db1_l : Sole_index_t.sole_index list ) =
  [[2];
   [7; 2];
   [1; 7; 2];
   [5; 1; 7; 2];
   [1; 5; 1; 7; 2];
   [1; 1; 5; 1; 7; 2];
   [1; 1; 1; 5; 1; 7; 2];
   [1; 1; 1; 1; 5; 1; 7; 2];
   [2; 1; 1; 5; 1; 7; 2];
   [1; 2; 1; 1; 5; 1; 7; 2];
   [3; 1; 1; 5; 1; 7; 2];
   [1; 3; 1; 1; 5; 1; 7; 2];
   [2; 1; 5; 1; 7; 2];
   [1; 2; 1; 5; 1; 7; 2];
   [1; 1; 2; 1; 5; 1; 7; 2];
   [2; 2; 1; 5; 1; 7; 2];
   [1; 2; 2; 1; 5; 1; 7; 2];
   [2; 5; 1; 7; 2];
   [1; 2; 5; 1; 7; 2];
   [1; 1; 2; 5; 1; 7; 2];
   [2; 1; 2; 5; 1; 7; 2];
   [3; 1; 2; 5; 1; 7; 2];
   [1; 3; 1; 2; 5; 1; 7; 2];
   [2; 3; 1; 2; 5; 1; 7; 2];
   [3; 3; 1; 2; 5; 1; 7; 2]]
);;

let soi_any = List.nth soi_db1_l 7;;

test_number 2 (
(soi_any : int list ) = 
[1; 1; 1; 1; 5; 1; 7; 2]
);;

let tag_db1_t = 
    Db1pointsdata_tag_tree_by_basicname_databox_provider_v.provide
    nam_dbo;;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_db1_l;;

test_number 3 (
( tag_top_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
         (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
           "A"))),
    [2; 5; 1; 7; 2])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_db1_t;;

let tag_clo_l = List.filter (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s) )  tag_lea_l;;

test_number 4 (
(tag_clo_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
    [1; 2; 2; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_keyword_symbol
       (Db1pointsdata_fence_keyword_symbol_t.Db1pointsdata_fence_keyword_vertex_symbol
         (Db1pointsdata_fence_keyword_vertex_symbol_t.Db1pointsdata_fence_keyword_vertex_constructor
           "A_A"))),
    [1; 1; 2; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "1.")))),
    [1; 3; 1; 2; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))),
    [2; 3; 1; 2; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))),
    [3; 3; 1; 2; 5; 1; 7; 2])]
);;

let tag_db1_fen = List_v.only_element_of_predicate_off_list (fun (s, i) -> i = soi_any) tag_db1_l ;; 

test_number 5 (
(tag_db1_fen : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_token_symbol
      (Db1pointsdata_fence_token_symbol_t.Db1pointsdata_fence_token_coordinates_symbol
        (Db1pointsdata_fence_token_coordinates_symbol_t.Db1pointsdata_fence_token_coordinates_units_symbol
          (Db1pointsdata_fence_token_coordinates_units_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_symbol
            (Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_symbol
              (Db1pointsdata_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter_constructor
                "A")))))),
   [1; 1; 1; 1; 5; 1; 7; 2])
);;

let tag_pat_fen = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_db1_fen) tag_db1_t);;

test_number 6 (
(tag_pat_fen : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
       (Db1pointsdata_set_body_bundle_symbol_t.Db1pointsdata_set_body_bundle_coordinates_symbol
         (Db1pointsdata_set_body_bundle_coordinates_symbol_t.Db1pointsdata_set_body_bundle_coordinates_constructor
           "A"))),
    [1; 1; 5; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
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
    [1; 1; 1; 1; 5; 1; 7; 2])]
);;

let not_only_one_l = List.filter  
    (fun (s, i) -> Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s)
    tag_pat_fen;; 

test_number 7 (
( not_only_one_l :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
    [1; 1; 1; 1; 5; 1; 7; 2])]
);;


let nam_fcn = db1pointsdata_set_fence_cell_name_off_sole_index soi_any;;

test_number 8 (
(nam_fcn : string ) = 
"db1pointsdata_set_fence_cell_coordinates_units_length_constructor"
);;

let nam_dbo = db1pointsdata_context_databox_string_off_off_sole_index soi_any;;

test_number 9 (
(nam_dbo : string ) = 
"Point_a"
);;

let nam_dba = db1pointsdata_context_database_string_off_off_sole_index soi_any;;

test_number 10 (
(nam_dba : string ) = 
"db1points"
);;

let nam_dcd = db1pointsdata_context_domain_string_off_off_sole_index soi_any;;

test_number 11 (
(nam_dcd : string ) = 
"figure"
);;

let nam_ncs = db1pointsdata_context_sector_string_off_off_sole_index soi_any;;

test_number 12 (
(nam_ncs : string ) = 
"external"
);;
