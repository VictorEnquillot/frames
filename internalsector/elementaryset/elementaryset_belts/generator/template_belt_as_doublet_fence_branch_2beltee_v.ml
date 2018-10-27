(** {3 This_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : DELE:Measure_by_elementary_fence_units_actual_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Envee_2)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name bel_ttt =
  Doublet_v.name This_tag_v.name Envee_2_v.name bel_ttt
;;

let string_off bel_ttt =
  Doublet_v.name This_tag_v.string_off Envee_2_v.string_off bel_ttt
;;

let longname bel_ttt =
  Doublet_v.name This_tag_v.longname Envee_2_v.longname bel_ttt
;;

let fullname bel_ttt =
  Doublet_v.name This_tag_v.fullname Envee_2_v.fullname bel_ttt
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_of_tag tag_ttt =
  let tag_eun = Tag_v.map_entity
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_this_symbol
      tag_ttt
  in
  Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide 
    tag_eun 
;;

let envee_2_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Envee_2_v.envee_2_off_measure_actual mea
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Tagged_measure_actual} *)

let tagged_measure_actual_of_tag tag_ttt =
  let mle = envee_2_of_tag tag_ttt in
  Doublet_v.make tag_ttt mle
;;

let belt_of_tag tag_ttt =
  tagged_measure_actual_of_tag tag_ttt 
;;

(** {6 Extracting Measure_actual off Belt} *)

let envee_2_off_belt bel_ttt =
  Doublet_v.right_off_doublet bel_ttt
;;

let measure_actual_off_belt bel_ttt =
  let mea_len = envee_2_off_belt bel_ttt in
  Envee_2_v.measure_actual_of_envee_2 mea_len
;;

let measure_actual_list_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ttt =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ttt in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_ttt =
  let bel_ttt = belt_of_tag tag_ttt in
  readee_off_belt bel_ttt 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ttt =
  let rea = readee_off_belt bel_ttt in
  [rea]
;;

let closure_of_tag tag_ttt =
  let bel_ttt = belt_of_tag tag_ttt in
  closure_off_belt bel_ttt
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_ttt =
  let plu_ttt = readee_of_tag tag_ttt in
  Doublet_v.make tag_ttt plu_ttt
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let mle = envee_2_of_tag tag_ttt in
  Envee_2_v.float_off_envee_2 mle 
;;

(** {6 Units} *)

let this_tag_of_tag tag_ttt =
  let mle = envee_2_of_tag tag_ttt in
  Envee_2_v.this_symbol_off_envee_2 mle
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (flo, sym_ttt) = envee_2_of_tag tag_ttt in
  Format.sprintf "coefficient %f %s" flo ( This_symbol_v.name sym_ttt)
;;



