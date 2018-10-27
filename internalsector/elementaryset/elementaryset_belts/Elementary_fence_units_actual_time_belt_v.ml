(** {3 Elementary_fence_units_actual_time_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:Elementary_fence_units_actual_time_belt_v";
   "Needs : DELE:Measure_actual_by_elementary_fence_units_actual_tag_provider_v";
   "Needs : DELE:Measure_canonical_by_elementary_fence_units_actual_tag_provider_v";
   "Needed-by: ";
   "What-is-it : it is its own Tag coupled with a Measure_time)";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Extraction from Database : Measure} *)

let measure_actual_of_tag tag_eat =
  let tag_eat = Tag_v.map_entity
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_time_symbol
      tag_eat
  in
  Measure_actual_by_elementary_fence_units_actual_tag_provider_v.provide 
    tag_eat 
;;

let measure_actual_time_of_tag tag_eat =
  let mea_act = measure_actual_of_tag tag_eat in
  Measure_actual_time_v.measure_actual_time_off_measure_actual mea_act
;;

let measure_canonical_of_tag_of_calculation_name tag_eat nam_cal =
  let mea_act = measure_actual_of_tag tag_eat in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_eat =
  let mle = measure_actual_time_of_tag tag_eat in
  Doublet_v.make tag_eat mle
;;

(** {6 Extracting Measure off Belt} *)

let measure_actual_time_off_belt bel_eat =
  Doublet_v.right_off_doublet bel_eat
;;

let measure_actual_off_belt bel_eat =
  let mea_ano = measure_actual_time_off_belt bel_eat in
  Measure_actual_time_v.measure_actual_of_measure_actual_time mea_ano
;;

let measure_actual_list_off_belt bel_eat =
  let mea_act = measure_actual_off_belt bel_eat in
  [mea_act]
;;

let measure_canonical_off_belt_of_calculation_name bel_eat nam_cal =
  let mea_act = measure_actual_off_belt bel_eat in
  Measure_canonical_v.measure_canonical_of_measure_actual_of_calculation_name mea_act nam_cal 
;;

let measure_canonical_list_off_belt_of_calculation_name bel_eat nam_cal =
  let mea_can = measure_canonical_off_belt_of_calculation_name bel_eat nam_cal in
  [mea_can]
;;

(** {6 Readee : a Generalization of Measure} *)

let readee_off_belt bel_eat =
  let mea_act = measure_actual_off_belt bel_eat in
  Readee_v.readee_of_measure_actual mea_act
;;

let readee_of_tag tag_eat =
  let bel_eat = belt_of_tag tag_eat in
  readee_off_belt bel_eat 
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_eat =
  let rea = readee_off_belt bel_eat in
  [rea]
;;

let closure_of_tag tag_eat =
  let bel_eat = belt_of_tag tag_eat in
  closure_off_belt bel_eat
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_eat =
  let plu_eat = readee_of_tag tag_eat in
  Doublet_v.make tag_eat plu_eat
;;

(** {6 Float} *)

let float_of_tag tag_eat  =
  let mno = measure_actual_time_of_tag tag_eat in
  Measure_actual_time_v.float_off_measure_actual_time mno 
;;

(** {6 Units} *)

let elementary_fence_units_actual_time_tag_of_tag tag_eat =
  let mno = measure_actual_time_of_tag tag_eat in
  Measure_actual_time_v.elementary_fence_units_actual_time_symbol_off_measure_actual_time mno
;;

(** {6 Text} *)

let text_of_tag tag_eat =
  let (flo, sym_eat) = measure_actual_time_of_tag tag_eat in
  Format.sprintf "time %f %s" flo ( Elementary_fence_units_actual_time_symbol_v.name sym_eat)
;;

(** {6 Naming} *)

let name bel_eat =
  Doublet_v.name Elementary_fence_units_actual_time_tag_v.name Measure_actual_time_v.name bel_eat
;;

let string_off bel_eat =
  Doublet_v.name Elementary_fence_units_actual_time_tag_v.string_off Measure_actual_time_v.string_off bel_eat
;;

let longname bel_eat =
  Doublet_v.name Elementary_fence_units_actual_time_tag_v.longname Measure_actual_time_v.longname bel_eat
;;

let fullname bel_eat =
  Doublet_v.name Elementary_fence_units_actual_time_tag_v.fullname Measure_actual_time_v.fullname bel_eat
;;


(* generated by ./do_belt_as_doublet_fence_units_actual_branch_4sibling_2beltee_v.sh elementary_fence_units_actual time eat femtosecond nanosecond picosecond second mti *)
(* using ./template_belt_as_doublet_fence_units_actual_branch_4sibling_2beltee_v.ml *)
(* Done on mardi 24 mai 2016, 16:43:06 (UTC+0200) *)

