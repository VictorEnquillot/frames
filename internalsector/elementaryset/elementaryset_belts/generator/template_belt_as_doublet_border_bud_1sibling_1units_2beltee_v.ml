(** {3 This_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "Needs : TELE:Thup_tag_v";
   "Needs : VELE:This_container_v";
   "Needed-by: ";
   "What-is-it : it is a belt of a Bud Type as a Doublet of its own Tag and a Measure";
   "Remark : no Bridge in Elementary Domain";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
;;

(** {6 Extraction from Database : Measure_actual} *)

let measure_actual_unts_1_of_tag tag_ttt =
  let tag_cnn_1 = 
    This_container_v.container_of_tag 
      tag_ttt
  in
  Conee_1_unts_1_belt_v.measure_actual_unts_1_of_tag tag_cnn_1
;;

(** {6 Measure_actual} *)

let measure_actual_of_tag tag_ttt =
  let msr = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_unts_1_v.measure_actual_of_measure_actual_unts_1 msr
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt nam_cal =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

(** {6 Belt} *)

let belt_of_tag tag_ttt =
  let msr = measure_actual_unts_1_of_tag tag_ttt in
  Doublet_v.make tag_ttt msr
;;

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_unts_1_off_belt bel_ttt =
  Doublet_v.right_off_doublet bel_ttt
;;

let measure_actual_off_belt bel_ttt =
  let msr = measure_actual_unts_1_off_belt bel_ttt in
  Measure_actual_unts_1_v.measure_actual_of_measure_actual_unts_1 msr
;;

let measure_actual_list_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  [mea]
;;

let measure_canonical_off_belt_of_calculation_name bel_ttt nam_cal =
  let mea = measure_actual_off_belt bel_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea nam_cal
;;

let measure_canonical_list_off_belt_of_calculation_name bel_ttt nam_cal =
  let can_mea = measure_canonical_off_belt_of_calculation_name bel_ttt nam_cal in
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

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let msr_1 = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_unts_1_v.float_off_measure_actual_unts_1 msr_1 
;;

(** {6 Elementary_fence_units_actual} *)

let conee_1_tag_of_tag tag_ttt =
  let msr_1 = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_unts_1_v.conee_1_unts_1_symbol_off_measure_actual_unts_1 msr_1
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (flo, sym_ttt) = measure_actual_unts_1_of_tag tag_ttt in
  Format.sprintf "unts_1 %f %s" flo ( Conee_1_unts_1_symbol_v.name sym_ttt)
;;

(** {6 Naming_for_belt} *)

let name bel_ttt =
  Doublet_v.name 
    This_tag_v.name
    Measure_actual_unts_1_v.name
    bel_ttt
;;

let longname bel_ttt =
  Format.sprintf "This_belt_t.%s" (String.capitalize (name bel_ttt))
;;

