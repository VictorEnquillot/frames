(** {3 Elementary_fence_units_canonical_quantum_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_canonical_quantum_belt_v";
   "Needs : DELE:Measure_by_elementary_fence_units_canonical_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Measure_canonical_quantum)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Extraction from Database : Measure} *)

let measure_canonical_of_tag tag_ecq =
  let tag_euc = Tag_v.map_entity
      Elementary_fence_units_canonical_symbol_v.elementary_fence_units_canonical_symbol_of_elementary_fence_units_canonical_quantum_symbol
      tag_ecq
  in
  Measure_canonical_by_elementary_fence_units_canonical_tag_provider_v.provide 
    tag_euc
;;

let measure_canonical_quantum_of_tag tag_ecq =
  let mea_can = measure_canonical_of_tag tag_ecq in
  Measure_canonical_quantum_v.measure_canonical_quantum_off_measure_canonical mea_can
;;

let measure_actual_of_tag tag_ecq =
  let mea_can = measure_canonical_of_tag tag_ecq in
  Measure_actual_v.measure_actual_of_measure_canonical mea_can
;;

(** {6 Belt} *)

let belt_of_tag tag_ecq =
  let mle = measure_canonical_quantum_of_tag tag_ecq in
  Doublet_v.make tag_ecq mle
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_canonical_quantum_off_belt bel_ecq =
  Doublet_v.right_off_doublet bel_ecq
;;

let measure_canonical_off_belt bel_ecq =
  let mea_len = measure_canonical_quantum_off_belt bel_ecq in
  Measure_canonical_quantum_v.measure_canonical_of_measure_canonical_quantum mea_len
;;

let measure_canonical_list_off_belt bel_ecq =
  let mea = measure_canonical_off_belt bel_ecq in
  [mea]
;;

let measure_actual_off_belt bel_ecq =
  let mea_can = measure_canonical_off_belt bel_ecq in
  Measure_actual_v.measure_actual_of_measure_canonical mea_can
;;

let measure_actual_off_belt bel_ecq =
  let mea_can = measure_canonical_off_belt bel_ecq in
  Measure_actual_v.measure_actual_of_measure_canonical mea_can
;;

let measure_actual_list_off_belt_of_calculation_name bel_ecq nam_cal =
  let mea = measure_actual_off_belt bel_ecq in
  [mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_ecq =
  let mea_act = measure_actual_off_belt bel_ecq in
  Readee_v.readee_of_measure_actual mea_act
;;

let readee_of_tag tag_ecq =
  let bel_ecq = belt_of_tag tag_ecq in
  readee_off_belt bel_ecq 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ecq =
  let rea = readee_off_belt bel_ecq in
  [rea]
;;

let closure_of_tag tag_ecq =
  let bel_ecq = belt_of_tag tag_ecq in
  closure_off_belt bel_ecq
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_ecq =
  let plu_ecq = readee_of_tag tag_ecq in
  Doublet_v.make tag_ecq plu_ecq
;;

(** {6 Float} *)

let float_of_tag tag_ecq  =
  let mcq = measure_canonical_quantum_of_tag tag_ecq in
  Measure_canonical_quantum_v.float_off_measure_canonical_quantum mcq 
;;

(** {6 Units} *)

let elementary_fence_units_canonical_quantum_tag_of_tag tag_ecq =
  let mcq = measure_canonical_quantum_of_tag tag_ecq in
  Measure_canonical_quantum_v.elementary_fence_units_canonical_quantum_symbol_off_measure_canonical_quantum mcq
;;

(** {6 Text} *)

let text_of_tag tag_ecq =
  let (flo, sym_ecq) = measure_canonical_quantum_of_tag tag_ecq in
  Format.sprintf "quantum %f %s" flo ( Elementary_fence_units_canonical_quantum_symbol_v.name sym_ecq)
;;

(** {6 Naming} *)

let name bel_ecq =
  Doublet_v.name Elementary_fence_units_canonical_quantum_tag_v.name Measure_canonical_quantum_v.name bel_ecq
;;

let string_off bel_ecq =
  Doublet_v.name Elementary_fence_units_canonical_quantum_tag_v.string_off Measure_canonical_quantum_v.string_off bel_ecq
;;

let longname bel_ecq =
  Doublet_v.name Elementary_fence_units_canonical_quantum_tag_v.longname Measure_canonical_quantum_v.longname bel_ecq
;;

let fullname bel_ecq =
  Doublet_v.name Elementary_fence_units_canonical_quantum_tag_v.fullname Measure_canonical_quantum_v.fullname bel_ecq
;;




(* generated by ./do_belt_as_doublet_fence_units_canonical_branch_9sibling_2beltee_v.sh elementary_fence_units_canonical quantum ecq canonical_quantum_action_planck_constant canonical_quantum_angle_radian canonical_quantum_charge_electron_charge canonical_quantum_energy_hartree canonical_quantum_length_bohr canonical_quantum_mass_electron_mass canonical_quantum_temperature_kelvin canonical_quantum_time_femtosecond canonical_quantum_none mcq *)
(* using ./template_belt_as_doublet_fence_units_canonical_branch_9sibling_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:06 (UTC+0200) *)
