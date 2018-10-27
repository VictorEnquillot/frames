(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
[
 "Current : VELE:This_envelope_v";
 "Needs: ";
 "Needed-by: ";
 "What-is-it : a one element list of Envelopee i.e. (Elementary_border_tag, Readee)";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Sibling Tag} *)

let this_tag_of_sibling_1_tag tag_sib_1 =
  let (sym_sib_1, soi_sib_1) = tag_sib_1 in
  Tag_v.make  
    (This_symbol_t.Sibling_1_symbol sym_sib_1)
    soi_sib_1
;;

let this_tag_of_sibling_2_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  Tag_v.make  
    (This_symbol_t.Sibling_2_symbol sym_ttt)
    soi_ttt
;;

let this_tag_of_sibling_3_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  Tag_v.make  
    (This_symbol_t.Sibling_3_symbol sym_ttt)
    soi_ttt
;;

(** {6 Coercing Down Sibling Tag} *)

let sibling_1_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      Tag_v.make sym_sib_1 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_envelope_v.sibling_1_tag_off_this_tag"
;;

let sibling_2_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      Tag_v.make sym_sib_2 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_envelope_v.sibling_2_tag_off_this_tag"
;;

let sibling_3_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      Tag_v.make sym_sib_3 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_3_tag:This_envelope_v.sibling_3_tag_off_this_tag"
;;

(** {6 Belt of Tag} *)

let belt_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      This_belt_t.Sibling_1_belt
      (Sibling_1_belt_v.belt_of_tag tag_sib_1)

  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      This_belt_t.Sibling_2_belt
      (Sibling_2_belt_v.belt_of_tag tag_sib_2)

  | This_symbol_t.Sibling_3_symbol sym_ttt ->
      let tag_sib_3 = Tag_v.make sym_ttt soi_ttt in
      This_belt_t.Sibling_3_belt
      (Sibling_3_belt_v.belt_of_tag tag_sib_3)
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_envelope_v.readee_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      Sibling_2_envelope_v.readee_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_ttt ->
      let tag_sib_3 = Tag_v.make sym_ttt soi_ttt in
      Sibling_3_envelope_v.readee_of_tag tag_sib_3
;;

(** {6 Measure of Tag} *)

let measure_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_envelope_v.measure_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      Sibling_2_envelope_v.measure_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_ttt ->
      let tag_sib_3 = Tag_v.make sym_ttt soi_ttt in
      Sibling_3_envelope_v.measure_of_tag tag_sib_3
;;

let measure_list_of_tag tag_ttt =
  let mea = measure_of_tag tag_ttt in
  [mea]
;;

let measure_canonical_of_tag_of_calculation_name tag_ttt =
  let mea = measure_of_tag tag_ttt in
  Measure_v.measure_canonical_of_measure_of_calculation_name mea
;;

let measure_canonical_list_of_tag tag_ttt =
  let can_mea = measure_canonical_of_tag_of_calculation_name tag_ttt in
  [can_mea]
;;

(** {6 Tagged_measure} *)

let tagged_measure_of_tag tag_ttt =
  let mea_ttt = measure_of_tag tag_ttt in 
  Doublet_v.make tag_ttt mea_ttt
;;

(** {6 Elementary_border_tag of Tag} *)

let elementary_border_tag_of_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
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

(** {6 Border as list of itself} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
    tag_ttt
;;

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
;;

(** {6 Envelope of Sibling} *)

let sibling_1_envelope_off_this_envelope env_ttt =
  let tag_ttt = Doublet_v.left_off_doublet env_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_envelope_v.envelope_of_tag tag_sib_1

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_envelope_v.sibling_1_envelope_off_this_envelope"
;;

let sibling_2_envelope_off_this_envelope env_ttt =
  let tag_ttt = Doublet_v.left_off_doublet env_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_ttt ->
      let tag_sib_2 = Tag_v.make sym_ttt soi_ttt in
      Sibling_2_envelope_v.envelope_of_tag tag_sib_2

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_envelope_v.sibling_2_envelope_off_this_envelope"
;;

let sibling_3_envelope_off_this_envelope env_ttt =
  let tag_ttt = Doublet_v.left_off_doublet env_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_3_symbol sym_ttt ->
      let tag_sib_3 = Tag_v.make sym_ttt soi_ttt in
      Sibling_3_envelope_v.envelope_of_tag tag_sib_3

  | _ -> failwith 
      "Not_a_sibling_3_tag:This_envelope_v.sibling_3_envelope_off_this_envelope"
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

(** {6 Measure off Envelope} *)

let measure_off_envelope env_ttt =
  let env = envelopee_off_envelope env_ttt in
  Envelopee_v.measure_off_envelopee env
;;

let measure_list_off_envelope env_ttt =
  let mea = measure_off_envelope env_ttt in
  [mea]
;;

let measure_canonical_off_envelope env_ttt =
  let mea = measure_off_envelope env_ttt in
  Measure_v.measure_canonical_of_measure_of_calculation_name mea
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

(** {6 Tagged_readee} *)

let tagged_readee_of_tag tag_ttt =
  let rea_ttt = readee_of_tag tag_ttt in
  Doublet_v.make tag_ttt rea_ttt
;;

(** {6 Float} *)

let float_of_tag tag_ttt  =
  let mea = measure_of_tag tag_ttt in
  Measure_v.float_off_measure mea 
;;

(** {6 Units} *)

let untup_tag_of_tag tag_ttt =
  let mea = measure_of_tag tag_ttt in
  Measure_v.untup_symbol_off_measure mea
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_envelope_v.text_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_envelope_v.text_of_tag tag_sib_2

  | This_symbol_t.Sibling_3_symbol sym_sib_3 ->
      let tag_sib_3 = Tag_v.make sym_sib_3 soi_ttt in
      Sibling_3_envelope_v.text_of_tag tag_sib_3
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
