open Make_test_v;;

testing "Elementary_border_coordinate_cylindrical_phi_envelope_v with
   Elementary_border_coordinate_cylindrical_phi_envelope_u.ml";;

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
Parameters_general_register_v.store_force "trace-provide" "true";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;

(* toplevel 
   #use "Elementary_border_coordinate_cylindrical_phi_envelope_u.ml";;

*)

let nam_dba = "db1_figure";;
let nam_dbo = "vertex_a";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

(* Context *) 
let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dbo)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "test_ao"))),
   [4; 5; 7])
);;

open Elementary_border_coordinate_cylindrical_phi_envelope_v;;

(* Argument Elementary_border_coordinate_cylindrical_phi_symbol ne 2 p 1 *)

let tag_ele_pae_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_border_coordinate_cylindrical_phi_constructor s)
    tag_ele_l;;

let tag_ele_pae_nep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Elementary_symbol_v.string_off s = "ne p 2 1")
    tag_ele_pae_l;;

let tag_eae_nep21 = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_cylindrical_phi_symbol_off_elementary_symbol tag_ele_pae_nep21;;

test_number 4 (
(tag_eae_nep21 :
   Elementary_border_coordinate_cylindrical_phi_symbol_t.elementary_border_coordinate_cylindrical_phi_symbol
   Tag_t.tag ) =
(Elementary_border_coordinate_cylindrical_phi_symbol_t.Elementary_border_coordinate_cylindrical_phi_constructor
   "ne p 2 1",
 [1; 156; 4; 5; 7])
);;

let tag_eae = tag_eae_nep21;;

let env_eae = build tag_eae;;

(* Database *)

let tag_ecr = Elementary_context_database_tag_by_database_name_provider_v.provide "db1";;

test_number 5 (
(tag_ecr : Elementary_context_database_symbol_t.elementary_context_database_symbol Tag_t.tag ) =
  (Elementary_context_database_symbol_t.Elementary_context_database "db1", [1; 4])
);;

(* Elementary_border_coordinate_cylindrical_phi Tag : Cylindrical_phi *)

let tag_ele_t = Elementary_tag_tree_by_elementary_context_database_tag_provider_v.provide tag_ecr;;
let tag_ele_l = Elementary_tag_all_list_by_elementary_context_database_tag_provider_v.provide tag_ecr;;

let tag_ele_csp_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_cylindrical_phi s) tag_ele_l;;

(* First Phi *)

let tag_ele_phi = List.nth tag_ele_csp_l 0;;

test_number 6 (
( tag_ele_phi : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
        (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_cylindrical_symbol
          (Elementary_border_coordinate_cylindrical_symbol_t.Cylindrical_phi
            "cylindrical_phi")))),
   [2; 12; 1; 4])
);;

let tag_ecs = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_cylindrical_symbol_off_elementary_symbol tag_ele_phi;;

test_number 7 (
( tag_ecs : Elementary_border_coordinate_cylindrical_symbol_t.elementary_border_coordinate_cylindrical_symbol
  Tag_t.tag ) =
  (Elementary_border_coordinate_cylindrical_symbol_t.Cylindrical_phi "cylindrical_phi",
   [2; 12; 1; 4])
);;

open Elementary_border_coordinate_cylindrical_envelope_v;;

let fen_l = Elementary_border_coordinate_cylindrical_container_v.fence_list tag_ecs;;

test_number 8 (
(fen_l : Elementary_border_coordinate_symbol_t.elementary_border_coordinate_symbol Tag_t.tag list ) =
  [(Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
     (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_cylindrical_symbol
       (Elementary_border_coordinate_cylindrical_symbol_t.Cylindrical_phi
         "cylindrical_phi")),
    [2; 12; 1; 4])]
);;

let dfe_l = Elementary_border_coordinate_cylindrical_container_v.deepfence_list tag_ecs;;

test_number 9 (
(dfe_l : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol Tag_t.tag list ) =
  [(Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
     Elementary_fence_units_angle_symbol_t.Radian,
    [1; 2; 12; 1; 4])]
);;

let con_ecs = Elementary_border_coordinate_cylindrical_container_v.container_of_tag tag_ecs;;
let env_ecs_d = Uno_v.map Elementary_fence_units_belt_v.closure con_ecs;;

let env_ecs = build tag_ecs;;

test_number 10 (
(env_ecs : Boundary_t.boundary list Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   [Boundary_t.Boundary_units
     (0.785398,
      Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
       Elementary_fence_units_angle_symbol_t.Radian)]
);;

let clo_ecs = closure tag_ecs;;
 
test_number 11 (
(clo_ecs : Boundary_t.boundary list ) =
  [Boundary_t.Boundary_units
    (0.785398,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Radian)]
);;

let clo_t = closure_as_tuple tag_ecs;;

test_number 12 (
clo_t = closure_as_tuple tag_ecs
);;

let clo_tl = closure_as_tuple_list tag_ecs;;

test_number 13 (
(clo_tl : Boundary_t.boundary Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Boundary_t.Boundary_units
      (0.785398,
       Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
        Elementary_fence_units_angle_symbol_t.Radian))]
);;
