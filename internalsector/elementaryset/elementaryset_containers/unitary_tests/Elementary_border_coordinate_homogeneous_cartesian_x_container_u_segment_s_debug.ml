open Make_test_v;;

testing "Elementary_border_coordinate_homogeneous_cartesian_x_container_v with
   Elementary_border_coordinate_homogeneous_cartesian_x_container_u_segment_s_debug.ml";;

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
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_border_coordinate_homogeneous_cartesian_x_container_u_segment_s_debug.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let nam_cal = "classical";;
let sof_ele_ecx = "S_C";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

open Elementary_border_coordinate_homogeneous_cartesian_x_container_v;;

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

(** {6 Builder Tag list} *)

let tag_son_l = Son_elementary_tag_list_by_father_elementary_tag_provider_v.provide
    tag_ele_ecx_x;;

let bui_ecx_l = builder_tag_list tag_ecx;;

test_number 2 (
( bui_ecx_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Angstrom)),
    [1; 1; 2; 3; 1; 7])]
);;

(** {6 Builder Tag Datastructure} *)

let bui_ecx_u = builder_tag_uno tag_ecx;;

test_number 3 (
(bui_ecx_u : Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_units_symbol
      (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
        Elementary_fence_units_length_symbol_t.Angstrom)),
   [1; 1; 2; 3; 1; 7])
);;

(** {6 Builder Tag tuple} *)

let bui_ecx_t = builder_tag_tuple tag_ecx;;

test_number 4 (
( bui_ecx_t :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
         Elementary_fence_units_length_symbol_t.Angstrom)),
    [1; 1; 2; 3; 1; 7])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

let con_ecx = container_of_tag tag_ecx;;

(**
(** {6 Extraction from Database : Measure} *)
let tag_ful = 
    Elementary_border_coordinate_homogeneous_cartesian_x_container_v.container_of_tag 
      tag_ecx;;

let mle_ecx = measure_length_of_tag tag_ecx;;

test_number 3 (
(mle_ecx :
   (float,
    Elementary_fence_units_length_symbol_t.elementary_fence_units_length_symbol)
   Doublet_t.doublet ) = 
(1., Elementary_fence_units_length_symbol_t.Meter)
);;

let mea_ecx = measure_of_tag tag_ecx;;

test_number 7 (
( mea_ecx :
  (float, Elementary_fence_units_symbol_t.elementary_fence_units_symbol)
  Doublet_t.doublet ) =
  (1.,
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Meter)
);;

let mca_ecx = measure_canonical_of_tag_of_calculation_name tag_ecx nam_cal;;

test_number 8 (
(mca_ecx :
  (float,
   Elementary_fence_units_canonical_symbol_t.elementary_fence_units_canonical_symbol)
  Doublet_t.doublet ) =
  (18897261245.6506195,
   Elementary_fence_units_canonical_symbol_t.Elementary_fence_units_canonical_classical_symbol
    Elementary_fence_units_canonical_classical_symbol_t.Canonical_classical_length_angstrom)
);;

(** {6 Container} *)

let ben_ecx = container_of_tag tag_ecx;;

test_number 9 (
( ben_ecx :
  (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.elementary_border_coordinate_homogeneous_cartesian_x_symbol
   Tag_t.tag, Measure_length_t.measure_length)
  Doublet_t.doublet ) =
  ((Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
     "A",
    [1; 2; 3; 1; 7]),
   (1., Elementary_fence_units_length_symbol_t.Meter))
);;

(** {6 Extracting Measure off Container} *)

test_number 10 (
mle_ecx = measure_length_off_container ben_ecx 
);;

test_number 11 (
mea_ecx = measure_off_container ben_ecx
);;

test_number 12 (
mca_ecx = measure_canonical_off_container_of_calculation_name ben_ecx nam_cal
);;

(** {6 Readee : a Generalization of Measure} *)

let run_ecx = readee_units_off_container ben_ecx;;

test_number 13 (
( run_ecx :
  (float, Elementary_fence_units_symbol_t.elementary_fence_units_symbol)
  Doublet_t.doublet ) =
  (1.,
   Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
    Elementary_fence_units_length_symbol_t.Meter)
);;

let rea_ecx = readee_off_container ben_ecx;;

test_number 14 (
( rea_ecx : Readee_t.readee ) =
  Readee_t.Readee_units
   (1.,
    Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
     Elementary_fence_units_length_symbol_t.Meter)
);;

test_number 15 (
rea_ecx = readee_of_tag tag_ecx
);;

test_number 16 (
run_ecx = readee_units_of_tag tag_ecx
);;

(** {9 Closure : list of Readee} *)

let clo_ecx = closure_off_container ben_ecx;;

test_number 17 (
( clo_ecx : Readee_t.readee list ) =
  [Readee_t.Readee_units
    (1.,
     Elementary_fence_units_symbol_t.Elementary_fence_units_length_symbol
      Elementary_fence_units_length_symbol_t.Meter)]
);;

test_number 18 (
clo_ecx = closure_of_tag tag_ecx
);;

(** {6 Float} *)

let flo_ecx = float_of_tag tag_ecx;;

test_number 19 (
(flo_ecx : float ) = 
1.
);;

(** {6 Elementary_fence_units} *)

let efu_ecx = elementary_fence_units_tag_of_tag tag_ecx;;

test_number 20 (
( efu_ecx :
  Elementary_fence_units_length_symbol_t.elementary_fence_units_length_symbol ) =
  Elementary_fence_units_length_symbol_t.Meter
);;

(** {6 Text} *)

let tex_ecx = text_of_tag tag_ecx;;

test_number 21 (
(tex_ecx : string ) = 
"length 1.000000 meter"
);;
*)
