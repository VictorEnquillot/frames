(** {3 This_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : DELE:Measure_by_elementary_fence_units_actual_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Venee_2)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name bel_eul =
  Doublet_v.name This_tag_v.name Measure_actual_action_v.name bel_eul
;;

let string_off bel_eul =
  Doublet_v.name This_tag_v.string_off Measure_actual_action_v.string_off bel_eul
;;

let longname bel_eul =
  Doublet_v.name This_tag_v.longname Measure_actual_action_v.longname bel_eul
;;

let fullname bel_eul =
  Doublet_v.name This_tag_v.fullname Measure_actual_action_v.fullname bel_eul
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_of_tag tag_eul =
  let tag_eun = Tag_v.map_entity
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_this_symbol
      tag_eul
  in
  Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide 
    tag_eun 
;;

let measure_actual_action_of_tag tag_eul =
  let mea = measure_actual_of_tag tag_eul in
  Measure_actual_action_v.measure_actual_action_off_measure_actual mea
;;

let measure_canonical_of_tag_of_calculation_name tag_eul =
  let mea = measure_actual_of_tag tag_eul in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Tagged_measure_actual Triplet} *)

let belt_of_tag tag_eac =
  let mle = measure_actual_action_of_tag tag_eac in
  Doublet_v.make tag_eac mle
;;

let tagged_measure_actual_action_triplet_of_tag tag_eac =
  let mle = measure_actual_action_of_tag tag_eac in
  Triplet_v.make_of_left_of_doublet tag_eac mle
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_action_off_belt bel_eul =
  Doublet_v.right_off_doublet bel_eul
;;

let measure_actual_off_belt bel_eul =
  let mea_len = measure_actual_action_off_belt bel_eul in
  Measure_actual_action_v.measure_actual_of_measure_actual_action mea_len
;;

let measure_actual_list_off_belt bel_eul =
  let mea = measure_actual_off_belt bel_eul in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_eul =
  let mea = measure_actual_off_belt bel_eul in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_eul =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_eul in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_eul =
  let mea = measure_actual_off_belt bel_eul in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_eul =
  let bel_eul = belt_of_tag tag_eul in
  readee_off_belt bel_eul 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_eul =
  let rea = readee_off_belt bel_eul in
  [rea]
;;

let closure_of_tag tag_eul =
  let bel_eul = belt_of_tag tag_eul in
  closure_off_belt bel_eul
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_eac =
  let plu_eac = readee_of_tag tag_eac in
  Doublet_v.make tag_eac plu_eac
;;

(** {6 Float} *)

let float_of_tag tag_eac  =
  let mle = measure_actual_action_of_tag tag_eac in
  Measure_actual_action_v.float_off_measure_actual_action mle 
;;

(** {6 Units} *)

let this_tag_of_tag tag_eac =
  let mle = measure_actual_action_of_tag tag_eac in
  Measure_actual_action_v.this_symbol_off_measure_actual_action mle
;;

(** {6 Text} *)

let text_of_tag tag_eac =
  let (flo, sym_eul) = measure_actual_action_of_tag tag_eac in
  Format.sprintf "coefficient %f %s" flo ( This_symbol_v.name sym_eul)
;;



