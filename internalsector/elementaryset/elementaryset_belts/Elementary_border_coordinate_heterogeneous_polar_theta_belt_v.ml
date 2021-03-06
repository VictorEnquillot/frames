(** {3 Elementary_border_coordinate_heterogeneous_polar_theta_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_border_coordinate_heterogeneous_polar_theta_belt_v";
   "Needs : TELE:Thup_tag_v";
   "Needs : VELE:Elementary_border_coordinate_heterogeneous_polar_theta_container_v";
   "Needed-by: ";
   "What-is-it : it is a belt of a Bud Type as a Doublet of its own Tag and a Measure";
   "Remark : no Bridge in Elementary Domain";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ept =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_polar_theta_symbol 
    tag_ept
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ept =
  [coerce_up_tag tag_ept]
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_angle_of_tag tag_ept =
  let tag_faa = 
    Elementary_border_coordinate_heterogeneous_polar_theta_container_v.container_of_tag 
      tag_ept
  in
  Elementary_fence_units_actual_angle_belt_v.measure_actual_angle_of_tag tag_faa
;;

(** {6 Measure_actual} *)

let measure_actual_of_tag tag_ept =
  let msr = measure_actual_angle_of_tag tag_ept in
  Measure_actual_angle_v.measure_actual_of_measure_actual_angle msr
;;

let measure_canonical_of_tag_of_calculation_name tag_ept nam_cal =
  let mea = measure_actual_of_tag tag_ept in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_ept =
  let msr = measure_actual_angle_of_tag tag_ept in
  Doublet_v.make tag_ept msr
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_angle_off_belt bel_ept =
  Doublet_v.right_off_doublet bel_ept
;;

let measure_actual_off_belt bel_ept =
  let msr = measure_actual_angle_off_belt bel_ept in
  Measure_actual_angle_v.measure_actual_of_measure_actual_angle msr
;;

let measure_actual_list_off_belt bel_ept =
  let mea = measure_actual_off_belt bel_ept in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ept nam_cal =
  let mea = measure_actual_off_belt bel_ept in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ept nam_cal =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ept nam_cal in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_ept =
  let mea = measure_actual_off_belt bel_ept in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_ept =
  let bel_ept = belt_of_tag tag_ept in
  readee_off_belt bel_ept 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ept =
  let rea = readee_off_belt bel_ept in
  [rea]
;;

let closure_of_tag tag_ept =
  let bel_ept = belt_of_tag tag_ept in
  closure_off_belt bel_ept
;;

(** {6 Float} *)

let float_of_tag tag_ept  =
  let man = measure_actual_angle_of_tag tag_ept in
  Measure_actual_angle_v.float_off_measure_actual_angle man 
;;

(** {6 Elementary_fence_units_actual} *)

let elementary_fence_units_actual_tag_of_tag tag_ept =
  let man = measure_actual_angle_of_tag tag_ept in
  Measure_actual_angle_v.elementary_fence_units_actual_angle_symbol_off_measure_actual_angle man
;;

(** {6 Text} *)

let text_of_tag tag_ept =
  let (flo, sym_ept) = measure_actual_angle_of_tag tag_ept in
  Format.sprintf "angle %f %s" flo ( Elementary_fence_units_actual_angle_symbol_v.name sym_ept)
;;

(** {6 Naming_for_belt} *)

let name bel_ept =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_polar_theta_tag_v.name
    Measure_actual_angle_v.name
    bel_ept
;;

let longname bel_ept =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_polar_theta_belt_t.%s" (String.capitalize (name bel_ept))
;;


(* generated by ./do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh elementary_border_coordinate_heterogeneous_polar ehp theta ept elementary_fence_units_actual efa angle faa man *)
(* using ./template_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:10 (UTC+0200) *)

