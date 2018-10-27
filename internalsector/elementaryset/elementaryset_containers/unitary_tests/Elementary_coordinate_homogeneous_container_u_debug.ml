open Make_test_v;;

testing "Elementary_coordinate_homogeneous_container_v with
   Elementary_coordinate_homogeneous_container_u_debug.ml";;

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
   #use "Elementary_coordinate_homogeneous_container_u_debug.ml";;

*)

(* Createdby *)

let tag_ecr = Elementary_createdby_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_database "db1", [1; 4])
);;

(* Elementary_coordinate_homogeneous Tag : Cartesian_x *)

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

let tag_ele_ccx_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_cartesian_x s) tag_ele_l;;

test_number 2 (
( tag_ele_ccx_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 1; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 2; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 3; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 4; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 5; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 6; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 7; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 8; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_coordinate_symbol
       (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
         (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
           (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
             "cartesian_x")))),
    [1; 9; 1; 4])]
);;

(* First X *)

let tag_ele_x = List.nth tag_ele_ccx_l 0;;

test_number 3 (
( tag_ele_x : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_coordinate_symbol
      (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
        (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
          (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")))),
   [1; 1; 1; 4])
);;

let tag_ecx = Tag_v.map_entity Elementary_symbol_v.elementary_coordinate_cartesian_symbol_off_elementary_symbol tag_ele_x;;

test_number 4 (
( tag_ecx : Elementary_coordinate_cartesian_symbol_t.elementary_coordinate_cartesian_symbol
  Tag_t.tag ) =
  (Elementary_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x",
   [1; 1; 1; 4])
);;

let tag_ele_x_st = Tree_v.subtree_of_node_off_tree tag_ele_x tag_ele_t;;
    
test_number 5 (
(tag_ele_x_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_coordinate_symbol
        (Elementary_coordinate_symbol_t.Elementary_coordinate_homogeneous_symbol
          (Elementary_coordinate_homogeneous_symbol_t.Elementary_coordinate_cartesian_symbol
            (Elementary_coordinate_cartesian_symbol_t.Cartesian_x
              "cartesian_x")))),
     [1; 1; 1; 4]),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_closure_symbol
       (Elementary_closure_symbol_t.Elementary_units_symbol
         (Elementary_units_symbol_t.Elementary_units_length_symbol
           Elementary_units_length_symbol_t.Nanometer)),
      [1; 1; 1; 1; 4])])
);;

let tag_ele_bui_l =
    Elementary_any_category_by_sole_index_extractor_v.son_elementary_tag_list_of_string_predicate_of_father_tag 
      "is_elementary_units_symbol_off_elementary_symbol"
      tag_ele_x;;

test_number 6 (
(tag_ele_bui_l : (Elementary_symbol_t.elementary_symbol, Sole_index_t.sole_index) Doublet_list_t.doublet_list ) =
  [(Elementary_symbol_t.Elementary_closure_symbol
     (Elementary_closure_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Nanometer)),
    [1; 1; 1; 1; 4])]
);;

let con_cts = Elementary_coordinate_cartesian_container_v.container_of_tag tag_ecx;;

test_number 7 (
( con_cts :
  Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag
  Uno_t.uno ) =
  
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4])
);;

