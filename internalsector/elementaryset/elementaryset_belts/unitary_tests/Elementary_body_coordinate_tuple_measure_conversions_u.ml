open Make_test_v;;

testing "Elementary_body_coordinate_tuple_measure_conversions_v with
   Elementary_body_coordinate_tuple_measure_conversions_u.ml";;

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
   #use "Elementary_body_coordinate_tuple_measure_conversions_u.ml";;

*)

let nam_dba = "nwchem";;
let nam_bas = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "basisset-name" nam_bas;;

let tag_ele_t = Elementary_tag_tree_by_parameters_general_provider_v.provide ();;

let tag_ele_l = Elementary_tag_all_list_by_parameters_general_provider_v.provide ();;

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

(* Domain *)

let tag_ele_fat = List.find 
    (fun t -> Elementary_symbol_v.is_elementary_context_domain_symbol_off_elementary_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_ele_l;;

test_number 3 (
(tag_ele_fat : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary")),
   [7])
);;

open Elementary_body_coordinate_tuple_cylindrical_envelope_v;;

(* BC_B Tuple *)

let sof_ele_ctc = "BC_B";;
let tag_ele_ctc = List.find (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ctc) tag_ele_l;;
let tag_etc = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_cylindrical_symbol_off_elementary_symbol tag_ele_ctc;;

test_number 4 (
( tag_etc :
  Elementary_body_coordinate_tuple_cylindrical_symbol_t.elementary_body_coordinate_tuple_cylindrical_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_cylindrical_symbol_t.Elementary_body_coordinate_tuple_cylindrical_constructor
    "BC_B",
   [1; 1; 4])
);;

let env_etc = build tag_etc;;

test_number 5 (
(env_etc : Measure_t.measure list Trio_t.trio) =
  ([(1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)],
   [(0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree)],
   [(0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)])
);;

(* BC_C Tuple *)

let sof_ele_ctc = "BC_C";;
let tag_ele_ctc = List.find (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ctc) tag_ele_l;;
let tag_etc = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_cylindrical_symbol_off_elementary_symbol tag_ele_ctc;;

test_number 6 (
( tag_etc :
  Elementary_body_coordinate_tuple_cylindrical_symbol_t.elementary_body_coordinate_tuple_cylindrical_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_cylindrical_symbol_t.Elementary_body_coordinate_tuple_cylindrical_constructor
    "BC_C",
   [2; 1; 4])
);;

let env_etc = build tag_etc;;
let mea_ccy_t = Elementary_body_coordinate_tuple_cylindrical_envelope_v.measure_tuple_of_elementary_body_coordinate_tuple_cylindrical_tag tag_etc;;

test_number 7 (
(mea_ccy_t : Measure_t.measure Tuple_t.tuple ) =
  Tuple_t.Trio
   ((1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom),
    (90.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_angle_symbol
      Elementary_fence_units_angle_symbol_t.Degree),
    (1.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom))
);;

let mea_ccy_tri = Tuple_v.trio_off_tuple mea_ccy_t;;

open Elementary_body_coordinate_tuple_measure_conversions_v;;

(* let elementary_body_coordinate_tuple_cartesian_measure_trio_of_cylindrical_measure_trio mea_ccy_tri *)
let (flo_rho, sym_uni_rho) = Trio_v.left_off_trio mea_ccy_tri;;
let (flo_phi, sym_uni_phi) = Trio_v.middle_off_trio mea_ccy_tri;;
let (flo_zed, sym_uni_zed) = Trio_v.right_off_trio mea_ccy_tri;;

test_number 8 (
(flo_phi : float) = 
90.
);;

let sym_uan_phi = Elementary_fence_units_actual_symbol_v.elementary_fence_units_angle_symbol_off_elementary_fence_units_actual_symbol sym_uni_phi;;

let flo_phi_rad = Measure_v.radian_of_measure (flo_phi, sym_uni_phi);;

test_number 9 (
(flo_phi_rad : float) = 
1.57079632679489656
);;

let flo_x_3d = flo_rho *. (cos flo_phi_rad);;
let flo_y_3d = flo_rho *. (sin flo_phi_rad);;
let flo_z_3d = flo_zed;;

let mea_cca_tri = elementary_body_coordinate_tuple_cartesian_measure_trio_of_cylindrical_measure_trio mea_ccy_tri;;

test_number 10 (
( mea_cca_tri :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet Trio_t.trio ) =
  ((6.12303176911188629e-17,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom),
   (1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom),
   (1.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom))
);;

let mch_t = measure_canonical_homogeneous_tuple_of_measure_tuple mea_ccy_t;;

test_number 11 (
(mch_t :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Trio
   ((6.12303176911188641e-27,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Meter),
    (1e-10,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Meter),
    (1e-10,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Meter))
);;
