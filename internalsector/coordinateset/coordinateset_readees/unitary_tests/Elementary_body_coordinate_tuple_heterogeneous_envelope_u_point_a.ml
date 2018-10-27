open Make_test_v;;

testing "Elementary_body_coordinate_tuple_heterogeneous_envelope_v with
   Elementary_body_coordinate_tuple_heterogeneous_envelope_u_point_a.ml";;

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
   #use "Elementary_body_coordinate_tuple_heterogeneous_envelope_u_point_a.ml";;

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

open Elementary_body_coordinate_tuple_heterogeneous_envelope_v;;

(* Argument Elementary_border_coordinate_heterogeneous_symbol ne 2 p 1 *)

let pre_tag_epa (s, i) = Coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol s;;
let pre_tag_epa_sof sof (s, i) = (Coordinate_symbol_v.is_elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_ele_pae_l = List.filter pre_tag_epa tag_ele_l;;

let sof_epa = "ne p 2 1";;

let tag_ele_pae_nep21_l = List.filter (pre_tag_epa_sof sof_epa) tag_ele_pae_l;;

let tag_eao_nep21_l = List.map
    (Tag_v.map_entity Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol) tag_ele_pae_nep21_l;;

test_number 4 (
(tag_eao_nep21_l :
  Elementary_border_coordinate_heterogeneous_symbol_t.elementary_border_coordinate_heterogeneous_symbol
  Tag_t.tag list ) =
  [(Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol
     (Elementary_border_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_constructor
       "ne p 2 1"),
    [1; 156; 4; 5; 7]);
   (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
     (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
       "ne p 2 1"),
    [2; 156; 4; 5; 7])]
);;

let pre_tag_pac_sof sof (s, i) = Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor sof = s;;

let tag_ele_pac = List_v.only_element_of_predicate_off_list (pre_tag_pac_sof sof_epa) tag_ele_pae_l;;

test_number 5 (
( tag_ele_pac : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Coordinate_symbol
      (Coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "ne p 2 1")))),
   [2; 156; 4; 5; 7])
);;

let tag_epa = Tag_v.map_entity Coordinate_symbol_v.elementary_border_coordinate_heterogeneous_symbol_off_coordinate_symbol tag_ele_pac;;
let env_epa = build tag_epa;;

test_number 6 (
(env_epa :
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.elementary_body_coordinate_tuple_heterogeneous_envelope ) =
  Elementary_body_coordinate_tuple_heterogeneous_envelope_t.Coordinate_set_fence_heterogeneous_spherical_rho_envelope
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let cun_epa_l = closure_units_as_list tag_epa;;

test_number 7 (
( cun_epa_l : Measure_t.measure list ) =
  [(0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let cun_epa_t = closure_units_as_tuple tag_epa;;

test_number 8 (
(cun_epa_t : Measure_t.measure Tuple_t.tuple) =
Tuple_t.Uno
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let cun_epa_tl = closure_units_as_tuple_list tag_epa;;

test_number 9 (
(cun_epa_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_t = measure_tuple_of_elementary_border_coordinate_heterogeneous_tag tag_epa;;

test_number 10 (
(mea_t : Measure_t.measure Tuple_t.tuple ) =
Tuple_t.Uno
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let mea_tl = measure_tuple_list_of_elementary_border_coordinate_heterogeneous_tag tag_epa;;

test_number 11 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_l = measure_list_of_elementary_border_coordinate_heterogeneous_tag tag_epa;;

test_number 12 (
(mea_l : Measure_t.measure list ) =
  [(0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)]
);; 

(*
let bou_u = boundary_uno tag_epa;;

test_number 13 (
(bou_u : Boundary_t.boundary Uno_t.uno ) =
  Boundary_t.Boundary_units
   (0.017151,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

let bou_l = boundary_list tag_epa;;

test_number 14 (
(bou_l : Boundary_t.boundary Uno_t.uno list ) =
  [Boundary_t.Boundary_units
    (0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let env_epa_t = envelope_as_tuple tag_epa;;

test_number 15 (
( env_epa_t : Measure_t.measure list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [(0.017151,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Bohr)]
);;

let mea_u = measure_uno_of_elementary_border_coordinate_heterogeneous_tag tag_epa;;

test_number 16 (
(mea_u : Measure_t.measure Uno_t.uno ) =
  (0.017151,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

*)
