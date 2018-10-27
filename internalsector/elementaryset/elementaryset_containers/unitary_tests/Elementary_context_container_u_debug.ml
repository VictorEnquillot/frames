open Make_test_v;;

testing "Elementary_context_container_v with
   Elementary_context_container_u_debug.ml";;

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
Parameters_general_register_v.store_force "trace-trace" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_context_container_u_debug.ml";;

*)

(* Createdby *)

let tag_ecr = Elementary_createdby_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_database "db1", [1; 4])
);;

(* Elementary_coordinate_tuple_homogeneous Tag : Cartesian *)

let tag_ele_t = Elementary_tag_tree_by_elementary_createdby_tag_provider_v.provide tag_ecr;;

open Elementary_context_container_v;;

let tag_ele_cre = elementary_tag tag_ecr;;

test_number 2 (
(tag_ele_cre : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_createdby_symbol
      (Elementary_createdby_symbol_t.Elementary_database "db1")),
   [1; 4])
);;

let tag_ele_bui_l =
    Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide 
      tag_ele_cre;;

let tag_bui_l = List.map 
    (Tag_v.map_entity (* Coerce Down *)
       Elementary_symbol_v.elementary_databox_symbol_off_elementary_symbol)
    tag_ele_bui_l;;

let tag_bui_l = builder_tag_list tag_ecr ;;


(*
let con_ecr = container_of_tag tag_ecr;;

test_number 3 (
(con_ecr : Elementary_body_symbol_t.elementary_body_symbol Tag_t.tag list ) =
  [(Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "T_A"))),
    [1; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
       (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_cylindrical_symbol
         (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
           "BC_B"))),
    [10; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
       (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_cylindrical_symbol
         (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
           "BC_C"))),
    [11; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
       (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
         (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
           "A_A"))),
    [12; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "T_B"))),
    [2; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "T_C"))),
    [3; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "V_A"))),
    [4; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "V_B"))),
    [5; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "V_C"))),
    [6; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "U_A"))),
    [7; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "U_B"))),
    [8; 1; 4]);
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
     (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
       (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
         (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
           "U_C"))),
    [9; 1; 4])]
);;

let fen_l = fence_list tag_ecr;;

test_number 4 (
(fen_l :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag list ) =
  [(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [1; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_B")),
    [2; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_C")),
    [3; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "V_A")),
    [4; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "V_B")),
    [5; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "V_C")),
    [6; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "U_A")),
    [7; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "U_B")),
    [8; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "U_C")),
    [9; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
     (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_cylindrical_symbol
       (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
         "BC_B")),
    [10; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
     (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_cylindrical_symbol
       (Elementary_coordinate_tuple_cylindrical_symbol_t.Elementary_coordinate_tuple_cylindrical_constructor
         "BC_C")),
    [11; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_heterogeneous_symbol
     (Elementary_coordinate_tuple_heterogeneous_symbol_t.Elementary_coordinate_tuple_spherical_symbol
       (Elementary_coordinate_tuple_spherical_symbol_t.Elementary_coordinate_tuple_spherical_constructor
         "A_A")),
    [12; 1; 4])]
);;

let fen_sl = List_v.sublist_of_int_of_length_of_list 0 3 fen_l;;

test_number 5 (
(fen_sl :
  Elementary_coordinate_tuple_symbol_t.elementary_coordinate_tuple_symbol
  Tag_t.tag list ) =
  [(Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_A")),
    [1; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_B")),
    [2; 1; 4]);
   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
         "T_C")),
    [3; 1; 4])]
);;

let dfe_l = deepfence_list tag_ecr;;

let dfe_sl = List_v.sublist_of_int_of_length_of_list 0 3 dfe_l;;

test_number 6 (
(dfe_sl : Elementary_units_symbol_t.elementary_units_symbol Tag_t.tag list ) =
  [(Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 1; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 2; 1; 1; 4]);
   (Elementary_units_symbol_t.Elementary_units_length_symbol
     Elementary_units_length_symbol_t.Nanometer,
    [1; 3; 1; 1; 4])]
);;
*)
