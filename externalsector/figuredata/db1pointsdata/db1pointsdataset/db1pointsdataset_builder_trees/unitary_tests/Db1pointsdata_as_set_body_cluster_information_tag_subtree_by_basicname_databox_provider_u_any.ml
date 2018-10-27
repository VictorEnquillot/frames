open Make_test_v;;

testing "Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_v with
    Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_u_Point_a.ml";;

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
   #use "Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_u_Point_a.ml";; 

*)

open Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;
let nam_mod = "Db1pointsdata_as_set_body_cluster_information_tag_subtree_by_basicname_databox_provider_u_Point_a";;

let tag_db1_t = Db1pointsdata_tag_tree_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_db1_hl = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 4) tag_db1_t;;

test_number 1 (
(tag_db1_hl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
    [5; 1; 7; 2])]
);;

let tag_db1_bci_st = Tree_v.subtree_of_node_predicate_off_tree  
    (fun (s, i) -> Db1pointsdata_symbol_v.is_db1pointsdata_set_body_cluster_information_constructor s)
    tag_db1_t;;

let tag_db1_bci_rtl = Tree_v.root_topson_node_list_off_tree tag_db1_bci_st;;

test_number 2 (
(tag_db1_bci_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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
    [2; 1; 5; 1; 7; 2])]
);;


let tag_db1_bci_lnl = Tree_v.leaf_node_list_off_tree tag_db1_bci_st;;

test_number 3 (
(tag_db1_bci_lnl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
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

test_number 4 (
tag_db1_bci_st = provide nam_dbo
);;

