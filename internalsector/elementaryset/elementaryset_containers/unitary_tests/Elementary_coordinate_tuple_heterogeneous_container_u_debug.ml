open Make_test_v;;

testing "Elementary_coordinate_tuple_heterogeneous_container_v with
   Elementary_coordinate_tuple_heterogeneous_container_u_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_figuredata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_skeletondata_tag_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;








(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_coordinate_tuple_heterogeneous_container_u_debug.ml";;

*)

(* Createdby *)

let tag_ecr = Elementary_createdby_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_database "db1", [1; 4])
);;

(* Elementary_coordinate_tuple_heterogeneous Tag : Spherical *)

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

let tag_ele_cts_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_coordinate_tuple_spherical_symbol_off_elementary_symbol s) tag_ele_l;;

test_number 2 (
( tag_ele_cts_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
       (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
         (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
           (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
             "A_A")))),
    [12; 1; 4])]
);;

(* Coordinate_tuple_spherical for Point A_A *)

let tag_ele_cts = List_v.only_element_of_predicate_off_list (fun (s, i) -> 
  (Elementary_symbol_v.is_elementary_coordinate_tuple_spherical_symbol_off_elementary_symbol s) 
    && (Elementary_symbol_v.string_off s = "A_A") ) tag_ele_l;; 

test_number 3 (
( tag_ele_cts : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
      (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
        (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
          (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
            "A_A")))),
   [12; 1; 4])
);;

let tag_cts = Tag_v.map_entity Elementary_symbol_v.elementary_coordinate_tuple_spherical_symbol_off_elementary_symbol tag_ele_cts;;

test_number 4 (
(tag_cts :
  Elementary_coordinate_tuple_spherical_symbol_t.elementary_coordinate_tuple_spherical_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
    "A_A",
   [12; 1; 4])
);;

let tag_ele_cts_st = Tree_v.subtree_of_node_off_tree tag_ele_cts tag_ele_t;;
    
test_number 5 (
(tag_ele_cts_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
        (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
          (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
            (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
              "A_A")))),
     [12; 1; 4]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_coordinate_symbol
          (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
              (Elementary_coordinate_spherical_symbol_t.Spherical_rho
                "spherical_rho")))),
       [1; 12; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_units_symbol
           (Elementary_units_symbol_t.Elementary_units_length_symbol
             Elementary_units_length_symbol_t.Meter)),
        [1; 1; 12; 1; 4])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_coordinate_symbol
          (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
              (Elementary_coordinate_spherical_symbol_t.Spherical_phi
                "spherical_phi")))),
       [2; 12; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_units_symbol
           (Elementary_units_symbol_t.Elementary_units_angle_symbol
             Elementary_units_angle_symbol_t.Radian)),
        [1; 2; 12; 1; 4])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_body_symbol
        (Elementary_body_symbol_t.Elementary_coordinate_symbol
          (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
            (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
              (Elementary_coordinate_spherical_symbol_t.Spherical_theta
                "spherical_theta")))),
       [3; 12; 1; 4]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_closure_symbol
         (Elementary_closure_symbol_t.Elementary_units_symbol
           (Elementary_units_symbol_t.Elementary_units_angle_symbol
             Elementary_units_angle_symbol_t.Radian)),
        [1; 3; 12; 1; 4])])])
);;

let tag_ele_bui_l =
    Elementary_any_category_by_sole_index_extractor_v.son_elementary_tag_list_of_string_predicate_of_father_tag 
      "is_elementary_coordinate_spherical_symbol_off_elementary_symbol"
      tag_ele_cts;;

test_number 6 (
(tag_ele_bui_l : (Elementary_symbol_t.elementary_symbol, Sole_index_t.sole_index) Doublet_list_t.doublet_list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
         (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
           (Elementary_coordinate_spherical_symbol_t.Spherical_rho
             "spherical_rho")))),
    [1; 12; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
         (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
           (Elementary_coordinate_spherical_symbol_t.Spherical_phi
             "spherical_phi")))),
    [2; 12; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_heterogeneous_symbol
         (Elementary_coordinate_heterogeneous_symbol_t.Elementary_coordinate_spherical_symbol
           (Elementary_coordinate_spherical_symbol_t.Spherical_theta
             "spherical_theta")))),
    [3; 12; 1; 4])]
);;

let con_cts = Elementary_coordinate_tuple_spherical_container_v.container_of_tag tag_cts;;

test_number 7 (
( con_cts :
  Elementary_coordinate_spherical_symbol_t.elementary_coordinate_spherical_symbol
  Tag_t.tag Trio_t.trio ) =
  ((Elementary_coordinate_spherical_symbol_t.Spherical_rho "spherical_rho",
    [1; 12; 1; 4]),
   (Elementary_coordinate_spherical_symbol_t.Spherical_phi "spherical_phi",
    [2; 12; 1; 4]),
   (Elementary_coordinate_spherical_symbol_t.Spherical_theta "spherical_theta",
    [3; 12; 1; 4]))
);;

