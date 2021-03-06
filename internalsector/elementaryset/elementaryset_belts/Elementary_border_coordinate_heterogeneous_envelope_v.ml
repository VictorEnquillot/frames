(** {3 Elementary_border_coordinate_heterogeneous_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
[
 "Current : VELE:Elementary_border_coordinate_heterogeneous_envelope_v";
 "Needs: VELE:Elementary_border_coordinate_heterogeneous_belt_v";
 "Needed-by: ";
 "What-is-it : a one element list of Envelopee i.e. (Elementary_border_tag, Readee)";
 "Remark : NO Sibling for any_envelope";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Belt of Tag} *)

let belt_of_tag tag_bch =
  Elementary_border_coordinate_heterogeneous_belt_v.belt_of_tag tag_bch
;;

(** {6 Elementary_border_tag of Tag} *)

let elementary_border_tag_of_tag tag_bch =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_symbol 
    tag_bch
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_bch =
  Elementary_border_coordinate_heterogeneous_belt_v.readee_of_tag tag_bch
;;

(** {6 Envelopee of Tag} *)

let envelopee_of_tag tag_bch =
  let tag_ebo = elementary_border_tag_of_tag tag_bch in
  let rea = readee_of_tag tag_bch in
  Doublet_v.make tag_ebo rea
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_bch =
  let env= envelopee_of_tag tag_bch in
  [env]
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_bch =
  Elementary_border_coordinate_heterogeneous_belt_v.measure_actual_of_tag tag_bch
;;

let measure_actual_list_of_tag tag_bch =
  let mea = measure_actual_of_tag tag_bch in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_bch =
  let mea = measure_actual_of_tag tag_bch in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_bch =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_bch in
  [can_mea]
;;

(** {6 Tagged_measure_actual} *)

let tagged_measure_actual_of_tag tag_bch =
  let mea_bch = measure_actual_of_tag tag_bch in 
  Doublet_v.make tag_bch mea_bch
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_bch =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_elementary_border_coordinate_heterogeneous_symbol 
    tag_bch
;;

let border_of_tag tag_bch =
  [coerce_up_tag tag_bch]
;;

(** {6 Envelopee off Envelope} *)

let envelopee_off_envelope env_bch =
  try List_v.element_off_one_element_list env_bch 
  with Failure _ -> 
    Error_messages_v.print_fatal_error __LOC__ "envelopee_off_envelope"
      "One element list"
      (Format.sprintf "Envelopee list is :@.   %s" (List_v.name Envelopee_v.fullname env_bch))
      "Check"
;;

(** {6 Elementary_border_tag off Envelope} *)

let elementary_border_tag_off_envelope env_bch =
  let env = envelopee_off_envelope env_bch in
  Doublet_v.left_off_doublet env
;;

(** {6 Tagged_readee} *)

let tagged_readee_of_tag tag_bch =
  let rea_bch = readee_of_tag tag_bch in
  Doublet_v.make tag_bch rea_bch
;;

(** {6 Float} *)

let float_of_tag tag_bch  =
  let mea = measure_actual_of_tag tag_bch in
  Measure_actual_v.float_off_measure_actual mea 
;;

(** {6 Units} *)

let elementary_fence_units_actual_tag_of_tag tag_bch =
  let mea = measure_actual_of_tag tag_bch in
  Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea
;;

(** {6 Text} *)

let text_of_tag tag_bch =
  Elementary_border_coordinate_heterogeneous_belt_v.text_of_tag tag_bch
;;

(** {6 Readee off Envelope} *)

let readee_off_envelope env_bch =
  let env = envelopee_off_envelope env_bch in
  Envelopee_v.readee_off_envelopee env
;;

(** {6 Measure_actual off Envelope} *)

let measure_actual_off_envelope env_bch =
  let env = envelopee_off_envelope env_bch in
  Envelopee_v.measure_actual_off_envelopee env
;;

let measure_actual_list_off_envelope env_bch =
  let mea = measure_actual_off_envelope env_bch in
  [mea]
;;

let measure_canonical_off_envelope env_bch =
  let mea = measure_actual_off_envelope env_bch in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_canonical_list_off_envelope env_bch =
  let can_mea = measure_canonical_off_envelope env_bch in
  [can_mea]
;;

(** {6 Closure : list of Readee} *)

let closure_off_envelope env_bch =
  let rea = readee_off_envelope env_bch in
  [rea]
;;

let closure_of_tag tag_bch =
  let rea = readee_of_tag tag_bch in
  [rea]
;;

(** {6 Naming_for_envelope} *)

let name env_bch =
  List_v.name Envelopee_v.name env_bch
;;

let fullname env_bch =
  List_v.name Envelopee_v.fullname env_bch
;;

let longname env_bch =
  List_v.name Envelopee_v.longname env_bch
;;

(* generated by ./do_envelope_as_list_border_trunc_units_v.sh elementary_border_coordinate_heterogeneous bch elementary_fence_units_actual *)
(* using ./template_envelope_as_list_border_trunc_units_v.ml *)
(* Done on mardi 24 mai 2016, 17:35:56 (UTC+0200) *)

