(** {3 Thup_thty_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VELE:Thup_thty_envelope_v";
   "Needs : VELE:Thup_thty_belt_v";
   "Needs : TELE:Thup_tag_v";
   "Needs : SELE:Elementary_border_symbol_v";
   "Needed-by: ";
   "What-is-it : a one element list of Envelopee i.e. (Elementary_border_tag, Readee)";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ttt =
  Thup_thty_belt_v.belt_of_tag tag_ttt
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  Thup_thty_belt_v.readee_of_tag tag_ttt
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  Readee_v.measure_actual_off_readee rea
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

(** {6 Tagged_measure_actual} *)

let tagged_measure_actual_of_tag tag_ttt =
  let mea_ttt = measure_actual_of_tag tag_ttt in 
  Doublet_v.make tag_ttt mea_ttt
;;

(** {6 Elementary_border_tag of Tag} *)

let elementary_border_tag_of_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_thup_thty_symbol 
    tag_ttt
;;

(** {6 Envelopee off Tag} *)

let envelopee_of_tag tag_ttt =
  let tag_ebo = elementary_border_tag_of_tag tag_ttt in
  let rea = readee_of_tag tag_ttt in
  Doublet_v.make tag_ebo rea
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_ttt =
  let env= envelopee_of_tag tag_ttt in
  [env]
;;

(** {6 Border as list of itself of Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_symbol_v.elementary_symbol_of_thup_thty_symbol 
    tag_ttt
;;

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
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

(** {6 Elementary_border_tag off Envelope} *)

let elementary_border_tag_off_envelope env_ttt =
  let env = envelopee_off_envelope env_ttt in
  Doublet_v.left_off_doublet env
;;

(** {6 Readee off Envelope} *)

let readee_off_envelope env_ttt =
  let env = envelopee_off_envelope env_ttt in
  Envelopee_v.readee_off_envelopee env
;;

(** {6 Measur off Envelope} *)

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

let closure_of_envelope env_ttt =
  let rea = readee_off_envelope env_ttt in
  [rea]
;;

let closure_of_tag tag_ttt =
  let env_ttt = envelope_of_tag tag_ttt in
  closure_of_envelope env_ttt
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  Thup_thty_belt_v.float_of_tag tag_ttt
;;

(** {6 Elementary_fence_units_actual} *)

let conup_1_msur_tag_of_tag tag_ttt =
  Thup_thty_belt_v.conup_1_msur_tag_of_tag tag_ttt
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  Thup_thty_belt_v.text_of_tag tag_ttt
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
