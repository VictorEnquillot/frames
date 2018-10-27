open Make_test_v;;

testing "Elementary_border_coordinate_heterogeneous_spherical_belt_v with
   Elementary_border_coordinate_heterogeneous_spherical_belt_u_point_a.ml";;

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
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_border_coordinate_heterogeneous_spherical_belt_u_point_a.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "point_a";;
let nam_cal = "classical";;
let sof_ele_ehs = "A";;

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
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "db1figure")),
   [1; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dbo)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_figuredata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol
        (Elementary_context_databox_figuredata_symbol_t.Elementary_context_databox_figuredata_constructor
          "point_a"))),
   [1; 1; 7])
);;

open Elementary_border_coordinate_heterogeneous_spherical_belt_v;;

(* Argument Elementary_border_coordinate_heterogeneous_spherical_rho_symbol "A" *)

let tag_ele_ehs_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_border_coordinate_heterogeneous_spherical_rho_symbol_off_elementary_symbol s)
    tag_ele_l;;

let tag_ele_ehs_rho = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ehs)
    tag_ele_ehs_l;;

let tag_ehs_rho = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_symbol_off_elementary_symbol tag_ele_ehs_rho;;

let tag_ehs = tag_ehs_rho;;

test_number 4 (
(tag_ehs :
  Elementary_border_coordinate_heterogeneous_spherical_symbol_t.elementary_border_coordinate_heterogeneous_spherical_symbol
  Tag_t.tag ) =
  (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
    (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
      "A"),
   [1; 1; 1; 1; 7])
);;

(** {6 Border as list of itself} *)

let bor_ehs = border_of_tag tag_ehs;;

test_number 5 (
(bor_ehs :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol
       (Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
         (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol
           (Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
             "A")))),
    [1; 1; 1; 1; 7])]
);;

(** {6 Extraction from Database : Measure} *)

let mea_ehs = measure_actual_of_tag tag_ehs;;

test_number 6 (
( mea_ehs :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (1.,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Meter)
);;

let mca_ehs = measure_canonical_of_tag_of_calculation_name tag_ehs nam_cal;;

test_number 7 (
(mca_ehs :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (18897261245.6506195,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol
    Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom)
);;

(** {6 Belt} *)

let ben_ehs = belt_of_tag tag_ehs;;

test_number 8 (
( ben_ehs :  Elementary_border_coordinate_heterogeneous_spherical_belt_t.elementary_border_coordinate_heterogeneous_spherical_belt ) =
  Elementary_border_coordinate_heterogeneous_spherical_belt_t.Elementary_border_coordinate_heterogeneous_spherical_rho_belt
   ((Elementary_border_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_constructor
      "A",
     [1; 1; 1; 1; 7]),
    (1., Elementary_fence_units_actual_length_symbol_t.Meter))
);;

(** {6 Extracting Measure off Belt} *)

test_number 9 (
mea_ehs = measure_actual_off_belt ben_ehs
);;

test_number 10 (
mca_ehs = measure_canonical_off_belt_of_calculation_name ben_ehs nam_cal
);;

(** {6 Readee : a Generalization of Measure} *)

let run_ehs = readee_units_off_belt ben_ehs;;

test_number 11 (
( run_ehs :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (1.,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Meter)
);;

let rea_ehs = readee_off_belt ben_ehs;;

test_number 12 (
( rea_ehs : Readee_t.readee ) =
  Readee_t.Readee_units
   (1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Meter)
);;

test_number 13 (
rea_ehs = readee_of_tag tag_ehs
);;

test_number 14 (
run_ehs = readee_units_of_tag tag_ehs
);;

(** {9 Closure : list of Readee} *)

let clo_ehs = closure_off_belt ben_ehs;;

test_number 15 (
( clo_ehs : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Meter)]
);;

test_number 16 (
clo_ehs = closure_of_tag tag_ehs
);;

(** {6 Float} *)

let flo_ehs = float_of_tag tag_ehs;;

test_number 17 (
(flo_ehs : float ) = 
1.
);;

(** {6 Elementary_fence_units} *)

let efu_ehs = elementary_fence_units_actual_tag_of_tag tag_ehs;;

test_number 18 (
(efu_ehs : Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol ) =
Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
  Elementary_fence_units_actual_length_symbol_t.Meter
);;

(** {6 Text} *)

let tex_ehs = text_of_tag tag_ehs;;

test_number 19 (
(tex_ehs : string ) = 
"length 1.000000 meter"
);;
