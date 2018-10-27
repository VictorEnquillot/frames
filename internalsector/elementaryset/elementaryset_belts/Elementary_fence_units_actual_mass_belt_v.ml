(** {3 Elementary_fence_units_actual_mass_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_actual_mass_belt_v";
   "Needs : DELE:Measure_actual_by_elementary_fence_units_actual_tag_provider_v";
   "Needs : DELE:Measure_canonical_by_elementary_fence_units_actual_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Measure_mass)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Extraction from Database : Measure} *)

let measure_actual_of_tag tag_eam =
  let tag_eam = Tag_v.map_entity
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_mass_symbol
      tag_eam
  in
  Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide 
    tag_eam 
;;

let measure_actual_mass_of_tag tag_eam =
  let mea_act = measure_actual_of_tag tag_eam in
  Measure_actual_mass_v.measure_actual_mass_off_measure_actual mea_act
;;

let measure_canonical_of_tag_of_calculation_name tag_eam nam_cal =
  let mea_act = measure_actual_of_tag tag_eam in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_eam =
  let mle = measure_actual_mass_of_tag tag_eam in
  Doublet_v.make tag_eam mle
;;

(** {6 Extracting Measure off Belt} *)

let measure_actual_mass_off_belt bel_eam =
  Doublet_v.right_off_doublet bel_eam
;;

let measure_actual_off_belt bel_eam =
  let mea_ano = measure_actual_mass_off_belt bel_eam in
  Measure_actual_mass_v.measure_actual_of_measure_actual_mass mea_ano
;;

let measure_actual_list_off_belt bel_eam =
  let mea_act = measure_actual_off_belt bel_eam in
  [mea_act]
;;

let measure_canonical_off_belt_of_calculation_name bel_eam nam_cal =
  let mea_act = measure_actual_off_belt bel_eam in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal 
;;

let measure_canonical_list_off_belt_of_calculation_name bel_eam nam_cal =
  let mea_can = measure_canonical_off_belt_of_calculation_name bel_eam nam_cal in
  [mea_can]
;;

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_eam =
  let mea_act = measure_actual_off_belt bel_eam in
  Readee_v.readee_of_measure_actual mea_act
;;

let readee_of_tag tag_eam =
  let bel_eam = belt_of_tag tag_eam in
  readee_off_belt bel_eam 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_eam =
  let rea = readee_off_belt bel_eam in
  [rea]
;;

let closure_of_tag tag_eam =
  let bel_eam = belt_of_tag tag_eam in
  closure_off_belt bel_eam
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_eam =
  let plu_eam = readee_of_tag tag_eam in
  Doublet_v.make tag_eam plu_eam
;;

(** {6 Float} *)

let float_of_tag tag_eam  =
  let mno = measure_actual_mass_of_tag tag_eam in
  Measure_actual_mass_v.float_off_measure_actual_mass mno 
;;

(** {6 Units} *)

let elementary_fence_units_actual_mass_tag_of_tag tag_eam =
  let mno = measure_actual_mass_of_tag tag_eam in
  Measure_actual_mass_v.elementary_fence_units_actual_mass_symbol_off_measure_actual_mass mno
;;

(** {6 Text} *)

let text_of_tag tag_eam =
  let (flo, sym_eam) = measure_actual_mass_of_tag tag_eam in
  Format.sprintf "mass %f %s" flo ( Elementary_fence_units_actual_mass_symbol_v.name sym_eam)
;;

(** {6 Naming} *)

let name bel_eam =
  Doublet_v.name Elementary_fence_units_actual_mass_tag_v.name Measure_actual_mass_v.name bel_eam
;;

let string_off bel_eam =
  Doublet_v.name Elementary_fence_units_actual_mass_tag_v.string_off Measure_actual_mass_v.string_off bel_eam
;;

let longname bel_eam =
  Doublet_v.name Elementary_fence_units_actual_mass_tag_v.longname Measure_actual_mass_v.longname bel_eam
;;

let fullname bel_eam =
  Doublet_v.name Elementary_fence_units_actual_mass_tag_v.fullname Measure_actual_mass_v.fullname bel_eam
;;


(* generated by ./do_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.sh elementary_fence_units_actual mass eam electron_mass gram mma *)
(* using ./template_belt_as_doublet_fence_units_actual_branch_2sibling_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:05 (UTC+0200) *)

