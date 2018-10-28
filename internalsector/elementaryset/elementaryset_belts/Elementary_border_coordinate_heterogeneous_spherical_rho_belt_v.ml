(** {3 Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_border_coordinate_heterogeneous_spherical_rho_belt_v";
   "Needs : TELE:Thup_tag_v";
   "Needs : VELE:Elementary_border_coordinate_heterogeneous_spherical_rho_container_v";
   "Needed-by: ";
   "What-is-it : it is a belt of a Bud Type as a Doublet of its own Tag and a Measure";
   "Remark : no Bridge in Elementary Domain";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_esr =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_spherical_rho_symbol 
    tag_esr
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_esr =
  [coerce_up_tag tag_esr]
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_length_of_tag tag_esr =
  let tag_fal = 
    Elementary_border_coordinate_heterogeneous_spherical_rho_container_v.container_of_tag 
      tag_esr
  in
  Elementary_fence_units_actual_length_belt_v.measure_actual_length_of_tag tag_fal
;;

(** {6 Measure_actual} *)

let measure_actual_of_tag tag_esr =
  let msr = measure_actual_length_of_tag tag_esr in
  Measure_actual_length_v.measure_actual_of_measure_actual_length msr
;;

let measure_canonical_of_tag_of_calculation_name tag_esr nam_cal =
  let mea = measure_actual_of_tag tag_esr in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_esr =
  let msr = measure_actual_length_of_tag tag_esr in
  Doublet_v.make tag_esr msr
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_length_off_belt bel_esr =
  Doublet_v.right_off_doublet bel_esr
;;

let measure_actual_off_belt bel_esr =
  let msr = measure_actual_length_off_belt bel_esr in
  Measure_actual_length_v.measure_actual_of_measure_actual_length msr
;;

let measure_actual_list_off_belt bel_esr =
  let mea = measure_actual_off_belt bel_esr in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_esr nam_cal =
  let mea = measure_actual_off_belt bel_esr in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

let measure_canonical_list_off_belt_of_calculation_name bel_esr nam_cal =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_esr nam_cal in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_esr =
  let mea = measure_actual_off_belt bel_esr in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_esr =
  let bel_esr = belt_of_tag tag_esr in
  readee_off_belt bel_esr 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_esr =
  let rea = readee_off_belt bel_esr in
  [rea]
;;

let closure_of_tag tag_esr =
  let bel_esr = belt_of_tag tag_esr in
  closure_off_belt bel_esr
;;

(** {6 Float} *)

let float_of_tag tag_esr  =
  let mle = measure_actual_length_of_tag tag_esr in
  Measure_actual_length_v.float_off_measure_actual_length mle 
;;

(** {6 Elementary_fence_units_actual} *)

let elementary_fence_units_actual_tag_of_tag tag_esr =
  let mle = measure_actual_length_of_tag tag_esr in
  Measure_actual_length_v.elementary_fence_units_actual_length_symbol_off_measure_actual_length mle
;;

(** {6 Text} *)

let text_of_tag tag_esr =
  let (flo, sym_esr) = measure_actual_length_of_tag tag_esr in
  Format.sprintf "length %f %s" flo ( Elementary_fence_units_actual_length_symbol_v.name sym_esr)
;;

(** {6 Naming_for_belt} *)

let name bel_esr =
  Doublet_v.name 
    Elementary_border_coordinate_heterogeneous_spherical_rho_tag_v.name
    Measure_actual_length_v.name
    bel_esr
;;

let longname bel_esr =
  Format.sprintf "Elementary_border_coordinate_heterogeneous_spherical_rho_belt_t.%s" (String.capitalize (name bel_esr))
;;


(* generated by ./do_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.sh elementary_border_coordinate_heterogeneous_spherical ehs rho esr elementary_fence_units_actual efa length fal mle *)
(* using ./template_belt_as_doublet_border_bud_1sibling_1units_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:10 (UTC+0200) *)
