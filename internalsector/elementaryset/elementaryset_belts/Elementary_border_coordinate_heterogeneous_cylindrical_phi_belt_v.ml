(** {3 Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_v";
   "Needs : TELE:Thup_tag_v";
   "Needs : VELE:Elementary_border_coordinate_heterogeneous_cylindrical_phi_container_v";
   "Needed-by: ";
   "What-is-it : it is a belt of a Bud Type as a Doublet of its own Tag and a Measure";
   "Remark : no Bridge in Elementary Domain";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ecp =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol 
    tag_ecp
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ecp =
  [coerce_up_tag tag_ecp]
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_angle_of_tag tag_ecp =
  let tag_faa = 
    Elementary_border_coordinate_heterogeneous_cylindrical_phi_container_v.container_of_tag 
      tag_ecp
  in
  Elementary_fence_units_actual_angle_belt_v.measure_actual_angle_of_tag tag_faa
;;

(** {6 Measure_actual} *)

let measure_actual_of_tag tag_ecp =
  let msr = measure_actual_angle_of_tag tag_ecp in
  Measure_actual_angle_v.measure_actual_of_measure_actual_angle msr
;;

let measure_canonical_of_tag_of_calculation_name tag_ecp nam_cal =
  let mea = measure_actual_of_tag tag_ecp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_ecp =
  let msr = measure_actual_angle_of_tag tag_ecp in
  Doublet_v.make tag_ecp msr
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_angle_off_belt bel_ecp =
  Doublet_v.right_off_doublet bel_ecp
;;

let measure_actual_off_belt bel_ecp =
  let msr = measure_actual_angle_off_belt bel_ecp in
  Measure_actual_angle_v.measure_actual_of_measure_actual_angle msr
;;

let measure_actual_list_off_belt bel_ecp =
  let mea = measure_actual_off_belt bel_ecp in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ecp nam_cal =
  let mea = measure_actual_off_belt bel_ecp in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ecp nam_cal =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ecp nam_cal in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_ecp =
  let mea = measure_actual_off_belt bel_ecp in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_ecp =
  let bel_ecp = belt_of_tag tag_ecp in
  readee_off_belt bel_ecp 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ecp =
  let rea = readee_off_belt bel_ecp in
  [rea]
;;

let closure_of_tag tag_ecp =
  let bel_ecp = belt_of_tag tag_ecp in
  closure_off_belt bel_ecp
;;

(** {6 Float} *)

let float_of_tag tag_ecp  =
  let man = measure_actual_angle_of_tag tag_ecp in
  Measure_actual_angle_v.float_off_measure_actual_angle man 
;;

(** {6 Elementary_fence_units_actual} *)

let elementary_fence_units_actual_tag_of_tag tag_ecp =
  let man = measure_actual_angle_of_tag tag_ecp in
  Measure_actual_angle_v.elementary_fence_units_actual_angle_symbol_off_measure_actual_angle man
;;

(** {6 Text} *)

let text_of_tag tag_ecp =
  let (flo, sym_ecp) = measure_actual_angle_of_tag tag_ecp in
  Format.sprintf "angle %f %s" flo ( Elementary_fence_units_actual_angle_symbol_v.name sym_ecp)
;;

(** {6 Naming_for_belt} *)

let name bel_ecp =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_cylindrical_phi_tag_v.name
    Measure_actual_angle_v.name
    bel_ecp
;;

let longname bel_ecp =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_cylindrical_phi_belt_t.%s" (String.capitalize (name bel_ecp))
;;


(* generated by ./do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh elementary_border_coordinate_heterogeneous_cylindrical ehc phi ecp elementary_fence_units_actual efa angle faa man *)
(* using ./template_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:09 (UTC+0200) *)

