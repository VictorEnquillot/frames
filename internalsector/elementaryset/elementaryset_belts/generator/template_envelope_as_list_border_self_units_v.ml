(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
[
 "Current : VELE:This_envelope_v";
 "Needs: VELE:This_belt_v";
 "Needed-by: ";
 "What-is-it : a one element list of Envelopee i.e. (Elementary_border_tag, Readee)";
 "Remark : NO Sibling for any_envelope";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ttt =
  This_belt_v.belt_of_tag tag_ttt
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  This_belt_v.readee_of_tag tag_ttt
;;

(** {6 Envelopee of Tag} *)

let envelopee_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  Doublet_v.make tag_ttt rea
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_ttt =
  let env = envelopee_of_tag tag_ttt in
  [env]
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ttt =
  This_belt_v.measure_actual_of_tag tag_ttt
;;

let measure_actual_list_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ttt =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ttt in
  [can_mea]
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ttt =
  This_belt_v.border_of_tag tag_ttt
;;

(** {6 Envelopee off Envelope} *)

let envelopee_off_envelope env_ttt =
  try List_v.element_off_one_element_list env_ttt 
  with Failure _ -> 
    Error_messages_v.print_fatal_error __LOC__ "envelopee_off_envelope"
      "One element list"
      (Format.sprintf "Envelopee list is :@.   %s" (List_v.name Envelopee_v.fullname env_ttt))
      "Check"
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let untup_tag_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.untup_symbol_off_measure_actual mea
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  This_belt_v.text_of_tag tag_ttt
;;

(** {6 Readee off Envelope} *)

let readee_off_envelope env_ttt =
  let env = envelopee_off_envelope env_ttt in
  Envelopee_v.readee_off_envelopee env
;;

(** {6 Measure_actual off Envelope} *)

let measure_actual_off_envelope env_ttt =
  let env = envelopee_off_envelope env_ttt in
  Envelopee_v.measure_actual_off_envelopee env
;;

let measure_actual_list_off_envelope env_ttt =
  let mea = measure_actual_off_envelope env_ttt in
  [mea]
;;

let measure_canonical_off_envelope env_ttt =
  let mea = measure_actual_off_envelope env_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_envelope env_ttt =
  let can_mea = measure_canonical_off_envelope env_ttt in
  [can_mea]
;;

(** {6 Closure : list of Readee} *)

let closure_off_envelope env_ttt =
  let rea = readee_off_envelope env_ttt in
  [rea]
;;

let closure_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  [rea]
;;

(** {6 Naming_for_envelope} *)

let name env_ttt =
  List_v.name Envelopee_v.name env_ttt
;;

let fullname env_ttt =
  List_v.name Envelopee_v.fullname env_ttt
;;

let longname env_ttt =
  List_v.name Envelopee_v.longname env_ttt
;;
