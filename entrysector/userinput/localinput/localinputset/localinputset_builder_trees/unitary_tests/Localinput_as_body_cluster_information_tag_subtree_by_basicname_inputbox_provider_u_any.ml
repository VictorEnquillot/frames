open Make_test_v;;

testing "Localinput_as_body_cluster_information_tag_subtree_by_basicname_inputbox_provider_v with
    Localinput_as_body_cluster_information_tag_subtree_by_basicname_inputbox_provider_u_Point_a.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Localinput_as_body_cluster_information_tag_subtree_by_basicname_inputbox_provider_u_Point_a.ml";; 

*)

open Localinput_as_body_cluster_information_tag_subtree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;
let nam_mod = "Localinput_as_body_cluster_information_tag_subtree_by_basicname_inputbox_provider_u_Point_a";;

let tag_loc_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loc_hl = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 4) tag_loc_t;;

test_number 1 (
(tag_loc_hl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [21; 1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbase_symbol
       (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
         "local")),
    [1; 21; 1]);
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Point_a_print")),
    [28; 1; 21; 1])]
);;

let tag_loc_bci_st = Tree_v.subtree_of_node_predicate_off_tree  
    (fun (s, i) -> Localinput_symbol_v.is_localinput_body_cluster_information_constructor s)
    tag_loc_t;;

let tag_loc_bci_rtl = Tree_v.root_topson_node_list_off_tree tag_loc_bci_st;;

test_number 2 (
(tag_loc_bci_rtl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_cluster_symbol
       (Localinput_body_cluster_symbol_t.Localinput_body_cluster_information_symbol
         (Localinput_body_cluster_information_symbol_t.Localinput_body_cluster_information_constructor
           "A"))),
    [1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_bundle_symbol
       (Localinput_body_bundle_symbol_t.Localinput_body_bundle_coordinates_symbol
         (Localinput_body_bundle_coordinates_symbol_t.Localinput_body_bundle_coordinates_constructor
           "A"))),
    [1; 1; 28; 1; 21; 1]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_bundle_symbol
       (Localinput_body_bundle_symbol_t.Localinput_body_bundle_figure_symbol
         (Localinput_body_bundle_figure_symbol_t.Localinput_body_bundle_figure_constructor
           "A"))),
    [2; 1; 28; 1; 21; 1])]
);;


let tag_loc_bci_lnl = Tree_v.leaf_node_list_off_tree tag_loc_bci_st;;

test_number 3 (
(tag_loc_bci_lnl : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
[(Localinput_symbol_t.Localinput_fence_symbol
   (Localinput_fence_symbol_t.Localinput_fence_token_symbol
     (Localinput_fence_token_symbol_t.Localinput_fence_token_coordinates_symbol
       (Localinput_fence_token_coordinates_symbol_t.Localinput_fence_token_coordinates_units_symbol
         (Localinput_fence_token_coordinates_units_symbol_t.Localinput_fence_token_coordinates_units_length_symbol
           (Localinput_fence_token_coordinates_units_length_symbol_t.Localinput_fence_token_coordinates_units_length_meter_symbol
             (Localinput_fence_token_coordinates_units_length_meter_symbol_t.Localinput_fence_token_coordinates_units_length_meter_constructor
               "A")))))),
  [1; 1; 1; 1; 28; 1; 21; 1]);
 (Localinput_symbol_t.Localinput_fence_symbol
   (Localinput_fence_symbol_t.Localinput_fence_token_symbol
     (Localinput_fence_token_symbol_t.Localinput_fence_token_coordinates_symbol
       (Localinput_fence_token_coordinates_symbol_t.Localinput_fence_token_coordinates_units_symbol
         (Localinput_fence_token_coordinates_units_symbol_t.Localinput_fence_token_coordinates_units_angle_symbol
           (Localinput_fence_token_coordinates_units_angle_symbol_t.Localinput_fence_token_coordinates_units_angle_radian_symbol
             (Localinput_fence_token_coordinates_units_angle_radian_symbol_t.Localinput_fence_token_coordinates_units_angle_radian_constructor
               "A")))))),
  [1; 2; 1; 1; 28; 1; 21; 1]);
 (Localinput_symbol_t.Localinput_fence_symbol
   (Localinput_fence_symbol_t.Localinput_fence_token_symbol
     (Localinput_fence_token_symbol_t.Localinput_fence_token_coordinates_symbol
       (Localinput_fence_token_coordinates_symbol_t.Localinput_fence_token_coordinates_kind_symbol
         (Localinput_fence_token_coordinates_kind_symbol_t.Localinput_fence_token_coordinates_kind_spherical_symbol
           (Localinput_fence_token_coordinates_kind_spherical_symbol_t.Localinput_fence_token_coordinates_kind_spherical_constructor
             "A"))))),
  [1; 3; 1; 1; 28; 1; 21; 1]);
 (Localinput_symbol_t.Localinput_fence_symbol
   (Localinput_fence_symbol_t.Localinput_fence_token_symbol
     (Localinput_fence_token_symbol_t.Localinput_fence_token_figure_symbol
       (Localinput_fence_token_figure_symbol_t.Localinput_fence_token_figure_kind_symbol
         (Localinput_fence_token_figure_kind_symbol_t.Localinput_fence_token_figure_kind_point_symbol
           (Localinput_fence_token_figure_kind_point_symbol_t.Localinput_fence_token_figure_kind_point_constructor
             "A"))))),
  [1; 1; 2; 1; 28; 1; 21; 1]);
 (Localinput_symbol_t.Localinput_fence_symbol
   (Localinput_fence_symbol_t.Localinput_fence_basic_symbol
     (Localinput_fence_basic_symbol_t.Localinput_fence_basic_word_symbol
       (Localinput_fence_basic_word_symbol_t.Localinput_fence_basic_word_uppercase_symbol
         (Localinput_fence_basic_word_uppercase_symbol_t.Localinput_fence_basic_word_uppercase_constructor
           "A")))),
  [1; 2; 2; 1; 28; 1; 21; 1])]
);;

test_number 4 (
tag_loc_bci_st = provide nam_ibo
);;

