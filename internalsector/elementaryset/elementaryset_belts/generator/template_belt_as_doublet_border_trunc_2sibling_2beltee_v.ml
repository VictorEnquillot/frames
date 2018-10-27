(** {3 This_belt_v} *)

(** {6 Documenting_for_belt} *)

let documentation () = 
[
  "Current : VELE:This_belt_v";
  "Needs: SELE:untup_";
  "Needed-by: ";
  "What-is-it: the Belt as (This_tag, Measure_actual_length)";
  "What-is-it: any Upper Entity Belt is expressed as a list of this Belt";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_ttt =
  Tag_v.map_entity 
    Elementary_border_symbol_v.elementary_border_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Up Sibling Tag} *)

let this_tag_of_sibling_1_tag tag_sig_1 =
  let (sym_sig_1, soi_sig_1) = tag_sig_1 in
  Tag_v.make  
    (This_symbol_t.Sibling_1_symbol sym_sig_1)
    soi_sig_1
;;

let this_tag_of_sibling_2_tag tag_eae =
  let (sym_eae, soi_eae) = tag_eae in
  Tag_v.make  
    (This_symbol_t.Sibling_2_symbol sym_eae)
    soi_eae
;;

(** {6 Coercing Down Sibling Tag} *)

let sibling_1_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      Tag_v.make sym_sig_1 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_belt_v.sibling_1_tag_off_this_tag"
;;

let sibling_2_tag_off_this_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_sig_2 ->
      Tag_v.make sym_sig_2 soi_ttt

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_belt_v.sibling_2_tag_off_this_tag"
;;

(** {6 Border as list of itself} *)

let border_of_tag tag_ttt =
  [coerce_up_tag tag_ttt]
;;

(** {6 Belt} *)

let belt_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      This_belt_t.Sibling_1_belt
      (Sibling_1_belt_v.belt_of_tag tag_sig_1)

  | This_symbol_t.Sibling_2_symbol sym_eae ->
      let tag_sig_2 = Tag_v.make sym_eae soi_ttt in
      This_belt_t.Sibling_2_belt
      (Sibling_2_belt_v.belt_of_tag tag_sig_2)
;;

(** {6 Measure_actual} *)

let measure_actual_unts_1_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      Sibling_1_belt_v.measure_actual_unts_1_of_tag tag_sig_1

  | This_symbol_t.Sibling_2_symbol sym_eae ->
      let tag_sig_2 = Tag_v.make sym_eae soi_ttt in
      Sibling_2_belt_v.measure_actual_unts_1_of_tag tag_sig_2
;;

let measure_actual_of_tag tag_ttt =
  let mle = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_t.Measure_actual_unts_1 mle
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

(** {6 Extracting Measure_actual off Belt} *)

let measure_actual_unts_1_off_belt bel_ttt =
  Doublet_v.right_off_doublet bel_ttt
;;

let measure_actual_off_belt bel_ttt =
  let mea_len = measure_actual_unts_1_off_belt bel_ttt in
  Measure_actual_unts_1_v.measure_actual_of_measure_actual_unts_1 mea_len
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

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Readee off Belt} *)

let readee_off_belt bel_ttt =
  let mea = measure_actual_off_belt bel_ttt in
  Readee_v.readee_of_measure_actual mea
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ttt =
  let rea = readee_off_belt bel_ttt in
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
  let mle = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_unts_1_v.float_off_measure_actual_unts_1 mle 
;;

(** {6 Units} *)

let unts_1_tag_of_tag tag_ttt =
  let mle = measure_actual_unts_1_of_tag tag_ttt in
  Measure_actual_unts_1_v.untup_unts_1_symbol_off_measure_actual_unts_1 mle
;;

(** {6 Units List} *)

let untup_tag_of_tag tag_ttt =
  let mea = measure_actual_of_tag tag_ttt in
  Measure_actual_v.untup_symbol_off_measure_actual mea
;;

let unts_1_list_tag_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  List.map
    Envee_1_belt_v.unts_1_tag_of_tag
    tag_ebo_l
;;


(** {6 Belt of Sibling} *)

let sibling_1_belt_off_this_belt bel_ttt =
  let tag_ttt = Doublet_v.left_off_doublet bel_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sig_1 ->
      let tag_sig_1 = Tag_v.make sym_sig_1 soi_ttt in
      Sibling_1_belt_v.belt_of_tag tag_sig_1

  | _ -> failwith 
      "Not_a_sibling_1_tag:This_belt_v.sibling_1_belt_off_this_belt"
;;

let sibling_2_belt_off_this_belt bel_ttt =
  let tag_ttt = Doublet_v.left_off_doublet bel_ttt in
  let (sym_ttt, soi_ttt) = tag_ttt in

  match sym_ttt with 
  | This_symbol_t.Sibling_2_symbol sym_eae ->
      let tag_sig_2 = Tag_v.make sym_eae soi_ttt in
      Sibling_2_belt_v.belt_of_tag tag_sig_2

  | _ -> failwith 
      "Not_a_sibling_2_tag:This_belt_v.sibling_2_belt_off_this_belt"
;;

(** {6 Naming_for_belt} *)

let name bel_ttt =
  Doublet_v.name This_tag_v.name Measure_actual_unts_1_v.name bel_ttt
;;

(** {6 Longnaming_for_belt} *)

let longname bel_ttt =
  Format.sprintf "This_belt_t.%s" (String.capitalize (name bel_ttt))
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let (sym_ttt, soi_ttt) = tag_ttt in
  match sym_ttt with 
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ttt in
      Sibling_1_belt_v.text_of_tag tag_sib_1

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ttt in
      Sibling_2_belt_v.text_of_tag tag_sib_2
;;
