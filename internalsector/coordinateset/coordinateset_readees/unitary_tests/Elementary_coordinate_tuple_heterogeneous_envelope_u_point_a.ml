open Make_test_v;;

testing "Coordinate_tuple_heterogeneous_envelope_v with
   Coordinate_tuple_heterogeneous_envelope_u_point_a.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_border_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete  Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Db1points_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1points_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1points_tag_all_list_by_db1points_context_databox_tag_register_v.register;;
Register_v.delete  Db1points_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Son_elementary_tag_list_by_father_elementary_tag_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;








(* Tracing *)


(* toplevel 
   #use "Coordinate_tuple_heterogeneous_envelope_u_point_a.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;


let tag_ele_l = Elementary_tag_all_list_by_coordinates_general_provider_v.provide ();;

(* Context *) 
let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
 (Coordinate_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "db1points")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = nam_dbo)
	&&
      (Coordinate_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "Point_a"))),
   [4; 5; 7])
);;

open Coordinate_tuple_heterogeneous_envelope_v;;

(* Argument Coordinate_tuple_heterogeneous_symbol ne 2 p 1 *)

let pre_tag_chs (s, i) = Coordinate_symbol_v.is_coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol s;;
let pre_tag_chs_sof sof (s, i) = (Coordinate_symbol_v.is_coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_ele_chs_l = List.filter pre_tag_chs tag_ele_l;;

let sof_chs = "ne p 2 1";;

let tag_ele_chs_nep21_l = List.filter (pre_tag_chs_sof sof_chs) tag_ele_chs_l;;

let tag_chs_nep21_l = List.map
    (Tag_v.map_entity Coordinate_symbol_v.coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol) tag_ele_chs_nep21_l;;

test_number 4 (
(tag_chs_nep21_l :
  Coordinate_tuple_heterogeneous_symbol_t.coordinate_tuple_heterogeneous_symbol
  Tag_t.tag list ) =
  [(Coordinate_tuple_heterogeneous_symbol_t.Coordinate_tuple_heterogeneous_constructor
     "ne p 2 1",
    [156; 4; 5; 7])]
);;

let tag_ele_chs = List_v.only_element_of_predicate_off_list (pre_tag_chs_sof sof_chs) tag_ele_chs_l;;

test_number 5 (
( tag_ele_chs : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Coordinate_tuple_symbol
      (Coordinate_tuple_symbol_t.Coordinate_tuple_heterogeneous_symbol
        (Coordinate_tuple_heterogeneous_symbol_t.Coordinate_tuple_heterogeneous_constructor
          "ne p 2 1"))),
   [156; 4; 5; 7])
);;

let tag_chs = Tag_v.map_entity Coordinate_symbol_v.coordinate_tuple_heterogeneous_symbol_off_coordinate_symbol tag_ele_chs;;
let env_chs = build tag_chs;;

test_number 6 (
( env_chs : Measure_t.measure list Duo_t.duo ) =
  ([(54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)],
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)])
);;

let tag_ele_l = Coordinate_tuple_heterogeneous_container_v.deepfence_as_list tag_chs;;

test_number 7 (
(tag_ele_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 156; 4; 5; 7]);
   (Coordinate_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_fence_units_actual_symbol
       (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 2; 156; 4; 5; 7])]
);;

let tag_eun_l = List.map Elementary_fence_units_actual_tag_v.elementary_fence_units_actual_tag_off_elementary_tag tag_ele_l ;;

test_number 8 (
(tag_eun_l :
  Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr,
    [1; 1; 156; 4; 5; 7]);
   (Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr,
    [1; 2; 156; 4; 5; 7])]
);;

let clo_uni = List.flatten (List.map Elementary_fence_units_belt_v.closure_units_as_list tag_eun_l);;

test_number 9 (
(clo_uni : Measure_t.measure list ) =
[(54.7,
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr);
 (0.017151,
  Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

test_number 10 (
clo_uni = closure_units_as_list tag_chs
);;

let cun_chs_t = closure_units_as_tuple tag_chs;;

test_number 11 (
(cun_chs_t : Measure_t.measure Tuple_t.tuple) =
  Tuple_t.Duo
   ((54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr),
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let cun_chs_tl = closure_units_as_tuple_list tag_chs;;

test_number 12 (
(cun_chs_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((54.7,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr),
     (0.017151,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

let mea_d = measure_duo_of_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 13 (
( mea_d : Measure_t.measure Duo_t.duo ) =
  ((54.7,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr),
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let mea_t = measure_tuple_of_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 14 (
( mea_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Duo
   ((54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr),
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr))
);;

let mea_tl = measure_tuple_list_of_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 15 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((54.7,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr),
     (0.017151,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
       Elementary_fence_units_actual_length_symbol_t.Bohr))]
);;

let mea_l = measure_list_of_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 16 (
(mea_l : Measure_t.measure list ) =
  [(54.7,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr);
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);; 

let env_pac = elementary_border_coordinate_heterogeneous_spherical_rho_envelope_off_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 17 (
( env_pac :
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.elementary_body_coordinate_tuple_heterogeneous_envelope ) =
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.Elementary_border_coordinate_heterogeneous_spherical_phi_envelope
   [(54.7,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_pac = elementary_border_coordinate_heterogeneous_spherical_rho_measure_actual_off_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 18 (
(mea_pac : Measure_t.measure ) =
  (54.7,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let env_pae = elementary_border_coordinate_heterogeneous_spherical_phi_envelope_off_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 19 ( 
(env_pae :
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.elementary_body_coordinate_tuple_heterogeneous_envelope ) =
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.Coordinate_set_fence_heterogeneous_spherical_rho_envelope
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let env_pae = elementary_border_coordinate_heterogeneous_spherical_phi_measure_actual_off_coordinate_tuple_heterogeneous_tag tag_chs;;

test_number 20 (
(env_pae : Measure_t.measure ) =
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;
