(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
[
  "Current : VELE:This_envelope_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: the Envelope as (This_tag, Measure_actual_length)";
  "What-is-it: any Upper Entity Envelope is expressed as a list of this Envelope";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ttt =
  Thup_thty_belt_v.belt_of_tag tag_ttt
;;

(** {6 Coercing Up Sibling Tag} *)

let this_tag_of_sibling_1_tag tag_sig_1 =
  let (sym_sig_1, soi_sig_1) = tag_sig_1 in
  Tag_v.make  
    (This_symbol_t.Sibling_1_symbol sym_sig_1)
    soi_sig_1
;;


(** {6 Coercing Down Sibling Tag} *)

let sibling_1_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      Tag_v.make sym_sig_1 soi_ttt
;;

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
    tag_ttt
;;

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
;;

(** {6 Envelope} *)

let envelope_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      This_envelope_t.Sibling_1_envelope
      (Sibling_1_envelope_v.envelope_of_tag tag_sig_1)
;;

(** {6 Measure_actual} *)

let measure_actual_length_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      Sibling_1_envelope_v.measure_actual_length_of_tag tag_sig_1
;;

let measure_actual_of_tag tag_ttt =
  let mle = measure_actual_length_of_tag tag_ttt in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mle
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

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.measure_canonical_of_measure_actual_of_calculation_name mea
;;

(** {6 Tagged_measure_actual} *)

let tagged_measure_actual_of_tag tag_ttt =
  let mea_ttt = measure_actual_of_tag tag_ttt in 
  Doublet_v.make tag_ttt mea_ttt
;;

(** {6 Extracting Measure_actual off Envelope} *)

let measure_actual_length_off_envelope env_ttt =
  Doublet_v.right_off_doublet env_ttt
;;

let measure_actual_off_envelope env_ttt =
  let mea_len = measure_actual_length_off_envelope env_ttt in
  Measure_actual_length_v.measure_actual_of_measure_actual_length mea_len
;;

let measure_actual_list_off_envelope env_ttt =
  let mea = measure_actual_off_envelope env_ttt in
  [mea]
;;

let measure_actual_canonical_off_envelope env_ttt =
  let mea = measure_actual_off_envelope env_ttt in
  Measure_actual_v.measure_actual_canonical_of_measure_actual_of_calculation_name mea
;;

let measure_actual_canonical_list_off_envelope env_ttt =
  let can_mea = measure_actual_canonical_off_envelope env_ttt in
  [can_mea]
;;

(** {6 Readee : a Generalization of Measure_actual} *)

let readee_off_envelope env_ttt =
  let mea = measure_actual_off_envelope env_ttt in
  Readee_v.readee_of_measure_actual mea
;;

let readee_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Readee_v.readee_of_measure_actual mea
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

(** {6 Tagged_readee} *)

let tagged_readee_of_tag tag_ttt =
  let plu_ttt = readee_of_tag tag_ttt in
  Doublet_v.make tag_ttt plu_ttt
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let mle = measure_actual_length_of_tag tag_ttt in
  Measure_actual_length_v.float_off_measure_actual_length mle 
;;

(** {6 Units} *)

let elementary_fence_units_actual_length_symbol_of_tag tag_ttt =
  let mle = measure_actual_length_of_tag tag_ttt in
  Measure_actual_length_v.elementary_fence_units_actual_length_symbol_off_measure_actual_length mle
;;

(** {6 Envelope of Sibling} *)

let sibling_1_envelope_off_this_envelope env_ttt =
  let tag_ttt = Doublet_v.left_off_doublet env_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      Sibling_1_envelope_v.envelope_of_tag tag_sig_1
;;

(** {6 Naming_for_envelope} *)

let name env_ttt =
  Doublet_v.name This_tag_v.name Measure_actual_length_v.name env_ttt
;;

(** {6 Longnaming_for_envelope} *)

let longname env_ttt =
  Format.sprintf "This_envelope_t.%s" (String.capitalize (name env_ttt))
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_envelope_v.text_of_tag tag_sib_1
;;
