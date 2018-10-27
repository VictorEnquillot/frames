open Make_test_v;;

testing "Elementary_border_coordinate_homogeneous_cartesian_x_belt_v with
   Elementary_border_coordinate_homogeneous_cartesian_x_belt_u_segment_s.ml";;

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

(* toplevel 
   #use "Elementary_border_coordinate_homogeneous_cartesian_x_belt_u_segment_s.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let nam_cal = "classical";;
let sof_ele_ecx = "S_C";;
let nam_mod = "Elementary_border_coordinate_homogeneous_cartesian_x_belt_v";;

Parameters_general_register_v.store nam_mod "database-name" nam_dba;;
Parameters_general_register_v.store nam_mod "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

open Elementary_border_coordinate_homogeneous_cartesian_x_belt_v;;

(* Argument Elementary_border_coordinate_homogeneous_cartesian_x_symbol "A" *)

let tag_ele_ecx_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_constructor s)
    tag_ele_l;;

let tag_ele_ecx_x = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ecx)
    tag_ele_ecx_l;;

let tag_ecx_x = Tag_v.map_entity Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_symbol tag_ele_ecx_x;;

let tag_ecx = tag_ecx_x;;

test_number 1 (
(tag_ecx :
   Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.elementary_border_coordinate_homogeneous_cartesian_x_symbol
   Tag_t.tag ) =
(Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
   sof_ele_ecx,
 [1; 2; 3; 1; 7])
);;

(** {6 Border as list of itself} *)

let bor_ecx = border_of_tag tag_ecx;;

test_number 2 (
(bor_ecx :
   Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))),
    [1; 2; 3; 1; 7])]
);;

(** {6 Extraction from Database : Measure} *)
let tag_ful = 
    Elementary_border_coordinate_homogeneous_cartesian_x_container_v.container_of_tag 
      tag_ecx;;

let mle_ecx = measure_actual_length_of_tag tag_ecx;;

test_number 3 (
(mle_ecx :
   (float,
    Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
   Doublet_t.doublet ) = 
(0., Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

let mea_ecx = measure_actual_of_tag tag_ecx;;

test_number 4 (
( mea_ecx :
  (float, Elementary_fence_units_actual_symbol_t.elementary_fence_units_actual_symbol)
  Doublet_t.doublet ) =
  (0.,
   Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

let mca_ecx = measure_canonical_of_tag_of_calculation_name tag_ecx nam_cal;;

test_number 5 (
(mca_ecx :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (0.,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol
    Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom)
);;

(** {6 Belt} *)

let ben_ecx = belt_of_tag tag_ecx;;

test_number 6 (
( ben_ecx :
  (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.elementary_border_coordinate_homogeneous_cartesian_x_symbol
   Tag_t.tag,
   (float,
    Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol)
   Doublet_t.doublet)
  Doublet_t.doublet ) =
  ((Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
     "S_C",
    [1; 2; 3; 1; 7]),
   (0., Elementary_fence_units_actual_length_symbol_t.Angstrom))
);;

(** {6 Extracting Measure off Belt} *)

test_number 7 (
mle_ecx = measure_actual_length_off_belt ben_ecx 
);;

test_number 8 (
mea_ecx = measure_actual_off_belt ben_ecx
);;

test_number 9 (
mca_ecx = measure_canonical_off_belt_of_calculation_name ben_ecx nam_cal
);;

(** {6 Readee : a Generalization of Measure} *)

let rea_ecx = readee_off_belt ben_ecx;;

test_number 10 (
( rea_ecx : Readee_t.readee ) =
  Readee_t.Readee_units
   (0.,
    Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
     Elementary_fence_units_actual_length_symbol_t.Angstrom)
);;

test_number 11 (
rea_ecx = readee_of_tag tag_ecx
);;

(** {9 Closure : list of Readee} *)

let clo_ecx = closure_off_belt ben_ecx;;

test_number 12 (
( clo_ecx : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (0.,
     Elementary_fence_units_actual_symbol_t.Elementary_fence_units_actual_length_symbol
      Elementary_fence_units_actual_length_symbol_t.Angstrom)]
);;

test_number 13 (
clo_ecx = closure_of_tag tag_ecx
);;

(** {6 Float} *)

let flo_ecx = float_of_tag tag_ecx;;

test_number 14 (
(flo_ecx : float ) = 
0.
);;

(** {6 Elementary_fence_units} *)

let eua_ecx = elementary_fence_units_actual_tag_of_tag tag_ecx;;

test_number 15 (
( eua_ecx :
  Elementary_fence_units_actual_length_symbol_t.elementary_fence_units_actual_length_symbol ) =
  Elementary_fence_units_actual_length_symbol_t.Angstrom
);;

(** {6 Text} *)

let tex_ecx = text_of_tag tag_ecx;;

test_number 16 (
(tex_ecx : string ) = 
"length 0.000000 angstrom"
);;
