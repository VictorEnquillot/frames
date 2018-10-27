open Make_test_v;;

testing "Elementary_body_coordinate_tuple_homogeneous_envelope_v with
   Elementary_body_coordinate_tuple_homogeneous_envelope_u.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;










(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_body_coordinate_tuple_homogeneous_envelope_u.ml";;

*)

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 1 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* Elementary_body_coordinate_tuple_homogeneous Tag : Cartesian *)

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_cth_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol s) tag_ele_l;;

test_number 2 (
( tag_ele_cth_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "T_A")))),
    [3; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "T_B")))),
    [4; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "T_C")))),
    [5; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "V_A")))),
    [6; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "V_B")))),
    [7; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "V_C")))),
    [8; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "U_A")))),
    [9; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "U_B")))),
    [10; 1; 4]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
           (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
             "U_C")))),
    [11; 1; 4])]
);;

(* Coordinate_tuple_cartesian for Point T_A *)

let tag_ele_cth = List_v.only_element_of_predicate_off_list (fun (s, i) -> 
  (Elementary_symbol_v.is_elementary_body_coordinate_tuple_cartesian_symbol_off_elementary_symbol s) 
    && (Elementary_symbol_v.string_off s = "T_A") ) tag_ele_l;; 

test_number 3 (
( tag_ele_cth : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
        (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
          (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
            "T_A")))),
   [3; 1; 4])
);;

open Elementary_body_coordinate_tuple_homogeneous_envelope_v;;

let tag_eth = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_symbol tag_ele_cth;;

test_number 4 (
( tag_eth :
  Elementary_body_coordinate_tuple_homogeneous_symbol_t.elementary_body_coordinate_tuple_homogeneous_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_cartesian_symbol
    (Elementary_body_coordinate_tuple_cartesian_symbol_t.Elementary_body_coordinate_tuple_cartesian_constructor
      "T_A"),
   [3; 1; 4])
);;

let fen_l = Elementary_body_coordinate_tuple_homogeneous_container_v.fence_list tag_eth;;

test_number 5 (
(fen_l :
  Elementary_border_coordinate_symbol_t.elementary_border_coordinate_symbol Tag_t.tag list ) =
  [(Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
     (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
       (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_x "cartesian_x")),
    [1; 3; 1; 4]);
   (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
     (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
       (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_y "cartesian_y")),
    [2; 3; 1; 4]);
   (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
     (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_cartesian_symbol
       (Elementary_border_coordinate_cartesian_symbol_t.Cartesian_z "cartesian_z")),
    [3; 3; 1; 4])]
);;

let dfe_l = Elementary_body_coordinate_tuple_homogeneous_container_v.deepfence_list tag_eth;;

test_number 6 (
( dfe_l : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 1; 3; 1; 4]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 2; 3; 1; 4]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer,
    [1; 3; 3; 1; 4])]
);;

let env_eth = build tag_eth;;

test_number 7 (
( env_eth :
  Elementary_body_coordinate_tuple_homogeneous_envelope_t.elementary_body_coordinate_tuple_homogeneous_envelope ) =
  Elementary_body_coordinate_tuple_homogeneous_envelope_t.Elementary_body_coordinate_tuple_cartesian_envelope
   ([(0.1,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer)],
    [(0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer)],
    [(-0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer)])
);;

let cun_eth = closure_units tag_eth;;
 
test_number 8 (
(cun_eth : Measure_t.measure list ) =
  [(0.1,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer);
   (0.2,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let cun_eth_t = closure_units_as_tuple tag_eth;;
 
test_number 9 (
(cun_eth_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Trio
   ((0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer),
    (0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer),
    (-0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer))
);;

let cun_eth_tl = closure_units_as_tuple_list tag_eth;;

test_number 10 (
(cun_eth_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer),
     (0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

let mea_t = measure_tuple_of_elementary_body_coordinate_tuple_homogeneous_tag tag_eth;;

test_number 11 (
(mea_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Trio
   ((0.1,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer),
    (0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer),
    (-0.2,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Nanometer))
);;

let mea_tl = measure_tuple_list_of_elementary_body_coordinate_tuple_homogeneous_tag tag_eth;;

test_number 12 (
( mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.1,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer),
     (0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer),
     (-0.2,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Nanometer))]
);;

let mea_l = measure_list_of_elementary_body_coordinate_tuple_homogeneous_tag tag_eth;;

test_number 13 (
(mea_l : Measure_t.measure list ) =
  [(0.1,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer);
   (0.2,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer);
   (-0.2,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Nanometer)]
);;

let nam_env_eth = name env_eth;;

test_number 14 (
(nam_env_eth : string ) =
  "([ (0.100000, nanometer) ], [ (0.200000, nanometer) ], [ (-0.200000, nanometer) ])"
);;
